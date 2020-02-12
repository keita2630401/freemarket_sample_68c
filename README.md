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
|address|string|null: false|
|post-number|integer|null: false|
|shipping-area|string|null: false|
|password|string|null: false|
### Association
- has_many :users_items
- has_many :items, through: :users_items
<!-- - has_many :comments
- has_many :likes -->

## users_itemsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer|null: false|
|name|string|null: false|
|description|text|null: false|
|image|string|null: false|
|shipping-cost-side|string|null: false|
|shipping-method|string|null: false|
|origin-area|string|null: false|
|shipping-days|string|null: false|
|parent-category_id|integer|null: false, foreign_key: true|
|child-category_id|integer|null: false, foreign_key: true|
|grandchild-category_id|integer|null: false, foreign_key: true|
### Association
- has_many :users_items
- has_many :users, through: :users_items
<!-- - has_many :comments
- has_many :likes -->
- belongs_to :parent-category
- belongs_to :child-category
- belongs_to :grandchild-category

<!-- ## likesテーブル
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item -->

## parent-categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :items
- has_many :child-categories

## child-categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|parent-category_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :parent-category
- has_many :grandchild-categories
- has_many :items

## grandchild-categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|child-category_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :child-category
- has_many :items