# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique:true|
|password|string|null: false|
### Association
- has_many :items, :dependent => :delete_all
- has_many :addresses, :dependent => :delete_all
- has_many :cards, :dependent => :delete_all
- has_many :comments, :dependent => :delete_all
- has_many :likes, :dependent => :delete_all

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|post_number|integer|null: false|
|prefecture_id|integer|null: false|
|municipality|string|null: false|
|town|string|null: false|
|building|string||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer|null: false|
|name|string|null: false|
|description|text|null: false|
|condition|string|null: false|
|shipping_cost_side|string|null: false|
|shipping_method|string|null: false|
|origin_area|string|null: false|
|shipping_days|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :category
- has_many :comments, :dependent => :delete_all
- has_many :likes, :dependent => :delete_all
- has_many :images, :dependent => :delete_all

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :item

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|null: false|
### Association
- has_many :items
- has_ancestry

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :item
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :item
- belongs_to :user

## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false, unique:true|
|expiration_year|integer|null: false|
|expiration_month|integer|null: false|
|csv|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
