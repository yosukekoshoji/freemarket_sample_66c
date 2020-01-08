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

### Association
- has_many :comments
- has_many :items
- has_many :trade_messages
- has_many :likes
- has_many :users_notices
- has_many :notices, through: :users_notices
- has_many :users_todo
- has_many :todos, through: :users_todos
- has_one :pay
- has_one :point
- has_one :profit

## users_noticesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|notice_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :notice

## users_todosテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|todo_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :todo

## paysテーブル
Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|card_number|integer|null: false|
|year|integer|null: false|
|month|integer|null: false|
|security_number|integer|null: false|

### Association
- belongs_to :user

## evalutionsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|name|string|null: false|
### Association
- has_many :users


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :items

## trade_messagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
|text|----|------|
### Association
- belongs_to :user
- has_many: items

## profitテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :item

## itemsテーブル
Column|Type|Options|
|------|----|-------|
|seller_id|references|foreign_key: true|
|buyer_id|references|foreign_key: true|
|name|string|null: false, index|
|price|integer|null: false|
|shipping_date|date|null: false|
|condition|string|null: false|
|delivery_method|string|-------|
|region|string|null: false|
|postage|integer|------|
|image_id|references|null: false, foreign_key: true|


### Association
- belongs_to :user
- belongs_to:todo
- belongs_to:notice
- belongs_to:brand
- belongs_to:categries
- belongs_to:profit
- has_many:trade_messages
- has_many:comments
- has_many:images

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
- has_many :users

## categriesテーブル
|Column|Type|Options|
|------|----|-------|
|parent_id|references|null: false, foreign_key: true|
### Association
- has_many :users


## todosテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|title|string|null: false|
### Association
- belongs_to :item
- has_many :users_todos
- has_many :todo, through: :users_todos

## noticeテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
### Association
- belongs_to :item
- has_many :users_notices
- has_many :users, through: :users_groups


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
- belongs_to :user

## prefecturessテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
### Association
- has_many :users