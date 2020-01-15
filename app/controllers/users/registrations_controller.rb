class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(sign_up_params)
    unless @user.valid?
      flash.now[:alert] = @user.errors.full_messages
      render :new and return
    end
    session["devise.regist_data"] = {user: @user.attributes}
    session["devise.regist_data"][:user]["password"] = params[:user][:password]
    @phone_number = @user.build_phone_number
    @address = @user.build_address
    @card = @user.build_card
    @address = @user.build_address

    render :new_tel
  end

  def create_tel
    @user = User.new(session["devise.regist_data"]["user"])
    @phone_number = PhoneNumber.new(tel_params)
    # binding.pry
    unless @phone_number.valid?
      flash.now[:alert] = @user.errors.full_messages
      render :new_tel and return
    end
      session["phone_number"] = {phone_number: @phone_number.attributes}
      session["phone_number"][:phone_number]= params[:phone_number]
      @user.build_phone_number(@phone_number.attributes)
      @address = Address.new
      render :new_address
    end

  
  def create_address
    @user = User.new(session["devise.regist_data"]["user"])
    @phone_number = PhoneNumber.new(session["phone_number"]["phone_number"])
    @address = Address.new(address_params)
    # binding.pry
    unless @address.valid?
      flash.now[:alert] = @address.errors.full_messages
      render :new_address and return
    end
    session["address"] = {address: @address.attributes}
    session["address"][:address]= params[:address]
    @user.build_address(@address.attributes)
    @card = Card.new
    render :new_card
  end
  

  def create_card
    @user = User.new(session["devise.regist_data"]["user"])
    @phone_number = PhoneNumber.new(session["phone_number"]["phone_number"])
    @address = Address.new(session["address"]["address"])
    @card = Card.new(card_params)
    # binding.pry
    unless @card.valid?
      flash.now[:alert] = @card.errors.full_messages
      render :new_card and return
    end
    @user.build_card(@card.attributes)
    @user.save
    # binding.pry
    @phone_number.save
    @address.save
    sign_in(:user, @user)
    render :create_address
  end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  end
  def tel_params
    params.require(:phone_number).permit(:phone_number)
  end

  def address_params
    params.require(:address).permit(:zipcode, :prefecture,:first_address,:second_address,:third_address,:user_id).merge(user_id: @user.id)
  end
  
  def card_params
    params.require(:card).permit(:card_number, :year, :momth, :security_number, :user_id)
  end
end


