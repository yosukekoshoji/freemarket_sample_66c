# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_rattle|string|null: false|
|last_name_rattle|string|null: false|
|email|string|unique: ture, null: false|
|phone_number|integr|null: false|
|birthyear|integer|null: false|
|birthmonth|integer|null: false|
|birthday|integer|null: false|
|password|string|null: false|
|introduction|text|-------|
|zipcode|string|null: false|
|first_address|string|null: false|
|second_address|string|null: false|
|third_address|string|-------|
|image|text|-------|
|prefecture_id|references|null: false,foreign_key: true|

###Association
- has_many :comments
- has_many :users_groups
- has_many :groups, through: :users_groups


## paysテーブル
Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|card_number|integer|null: false|
|year|integer|null: false|
|month|integer|null: false|
|security_number|integer|null: false|

###Association
- belongs_to :user

## evalutionsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|name|string|null: false|
### Association
- has_many :user


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :item

## trade_messagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
|text|text|------|
### Association
- belongs_to :user
- has_many: item

## profitテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

## itemsテーブル
Column|Type|Options|
|------|----|-------|
|seller_id|references|foreign_key: true|
|buyer_id|references|foreign_key: true|
|name|string|null: false, index|
|price|integer|null: false|
|condition|string|null: false|
|delivery_method|string|-------|
|postage|integer|------|
|image_id|references|null: false, foreign_key: true|


###Association
- belongs_to :user
- belongs_to:todo
- belongs_to:notice
- belongs_to:brand
- belongs_to:categries
- belongs_to:profit
- has_many:trade_message
- has_many:comment
- has_many:image

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|image|text|null: false|
### Association
- belongs_to :item

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|-------|
### Association
- has_many :user

## categriesテーブル
|Column|Type|Options|
|------|----|-------|
|parent_id|references|null: false, foreign_key: true|
### Association
- has_many :user


## todosテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|title|string|null: false|
### Association
- belongs_to :user
- belongs_to :group

## noticeテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|title|string|null: false|
|text|text|null: false|
### Association
- belongs_to :item


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
|text|text|null: false|
### Association
- belongs_to :user
- belongs_to :item

## pointsテーブル 
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
### Association


## prefecturessテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
### Association
