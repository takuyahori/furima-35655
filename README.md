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
- has_one :purchase

## items テーブル

| Column         | Type         | Options                        |
| -------------- | ------------ | ------------------------------ |
| name           | string       | null: false                    |
| explanation    | string       |                                |
| size           | integer      |                                |
| status         | string       | null: false                    |
| shipping_cost  | string       | null: false                    |
| shipping_area  | string       | null: false                    |
| shippinng_days | integer      | null: false                    |
| price          | integer      | null: false                    |
| user           | references   | null: false, foreign_key: true |

### Association

- has_many :comments
- has_one :purchase
- has_one :brand
- belongs_to :user

## purchase テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| post_code       | integer    | null: false                    |
| city            | string     | null: false                    |
| address         | integer    | null: false                    |
| building_name   | string     |                                |
| phone           | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |
| item            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item  

## comments テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| text    | string  | null: false                    |
| user_id | integer | null: false, foreign_key: true |
| item_id | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

## brand テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| name    | text    | null: false                    |
| item_id | integer | null: false, foreign_key: true |

### Association

- belongs_to :item