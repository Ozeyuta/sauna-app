# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| first_name_kana    | string | null: false               |
| last_name_kana     | string | null: false               |

### Association

- has_many :protos
- has_many :comments

## protos テーブル

| Column             | Type        | Options                        |
| ------------------ | ----------- | ------------------------------ |
| title              | string      | null: false                    |
| post_text          | text        |                                |
| sauna_id           | integer     | null: false                    |
| cold_bath_id       | integer     | null: false                    |
| loury_id           | integer     | null: false                    |
| auto_loury_id      | integer     | null: false                    |
| self_loury_id      | integer     | null: false                    |
| outside_id         | integer     | null: false                    |
| invigorate_id      | integer     | null: false                    |
| water_id           | integer     | null: false                    |
| user               | references  | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column             | Type        | Options                        |
| ------------------ | ----------- | ------------------------------ |
| user               | references  | null: false, foreign_key: true |
| proto              | references  | null: false, foreign_key: true |
| content            | text        | null: false                    |

### Association

- belongs_to :user
- belongs_to :proto