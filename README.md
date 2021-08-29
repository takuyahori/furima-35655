# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| last_name          | string  | null: false               |
| first_name         | string  | null: false               |
| last_name_kana     | string  | null: false               |
| first_name_kana    | string  | null: false               |
| birth_year         | date    | null: false               |

### Association

- has_many :items
- has_many :comments
- has_many :purchases
- has_one :address

## items テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| explanation      | string     | null: false                    |
| status_id        | integer    | null: false                    |
| shipping_cost_id | integer    | null: false                    |
| shipping_area_id | integer    | null: false                    |
| shipping_days_id | integer    | null: false                    |
| price            | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- has_many :comments
- has_one :purchase
- has_one :brand
- belongs_to :user

## address テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| post_code       | string     | null: false                    |
| prefecture      | string     | null: false                    |
| city            | string     | null: false                    |
| address         | string     | null: false                    |
| building_name   | string     |                                |
| phone           | string     | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## purchase テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| user            | references | null: false, foreign_key: true |
| item            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item  

## comments テーブル

| Column | Type       | Options                        |
| -------| ---------- | ------------------------------ |
| text   | string     | null: false                    |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

## brand テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| name    | text       | null: false                    |
| item    | references | null: false, foreign_key: true |

### Association

- belongs_to :item