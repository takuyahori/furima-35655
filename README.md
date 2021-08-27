# テーブル設計

## users テーブル

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| nickname        | string  | null: false |
| mail            | string  | null: false |
| password        | string  | null: false |
| last_name       | string  | null: false |
| first_name      | string  | null: false |
| last_name_kana  | string  | null: false |
| first_name_kana | string  | null: false |
| birth_year      | integer | null: false |
| birth_month     | integer | null: false |
| birth_day       | integer | null: false |

### Association

- has_many :item
- has_many :comments
- has_one :purchase

## items テーブル

| Column         | Type         | Options                        |
| -------------- | ------------ | ------------------------------ |
| image          | ActiveStrage |                                |
| name           | string       | null: false                    |
| explanation    | string       |                                |
| size           | integer      |                                |
| status         | string       | null: false                    |
| shipping_cost  | string       | null: false                    |
| shipping_area  | string       | null: false                    |
| shippinng_days | integer      | null: false                    |
| price          | integer      | null: false                    |
| user_id        | integer      | null: false, foreign_key: true |

### Association

- has_many :comments
- has_one :purchase
- has_one :category
- has_one :brand
- belongs_to :user

## purchase テーブル

| Column          | Type    | Options                        |
| --------------- | ------- | ------------------------------ |
| last_name       | string  | null: false                    |
| first_name      | string  | null: false                    |
| last_name_kana  | string  | null: false                    |
| first_name_kana | integer | null: false                    |
| post_code       | integer | null: false                    |
| city            | string  | null: false                    |
| address         | integer | null: false                    |
| building_name   | string  |                                |
| phone           | integer | null: false                    |
| user_id         | integer | null: false, foreign_key: true |
| item_id         | integer | null: false, foreign_key: true |

### Association

- has_one :card
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

## card テーブル

| Column         | Type    | Options                        |
| -------------- | ------- | ------------------------------ |
| card_number    | integer | null: false                    |
| deadline_year  | integer | null: false                    |
| deadline_month | integer | null: false                    |
| security_code  | integer | null: false                    |
| purchase_id    | integer | null: false, foreign_key: true |

### Association

- belongs_to :purchase

## category テーブル

| Column   | Type    | Options                        |
| -------- | ------- | ------------------------------ |
| detail   | text    | null: false                    |
| detail_2 | text    | null: false                    |
| detail_3 | text    | null: false                    |
| item_id  | integer | null: false, foreign_key: true |

### Association

- belongs_to :category

## brand テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| name    | text    | null: false                    |
| item_id | integer | null: false, foreign_key: true |

### Association

- belongs_to :item