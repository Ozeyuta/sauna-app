class CreateProtos < ActiveRecord::Migration[6.0]
  def change
    create_table :protos do |t|
      t.string     :title,                  null: false
      t.text       :post_text,              null: false
      t.integer    :sauna_id,               null: false
      t.integer    :cold_bath_id,           null: false
      t.integer    :loury_id,               null: false
      t.integer    :auto_loury_id,          null: false
      t.integer    :self_loury_id,          null: false
      t.integer    :outside_id,             null: false
      t.integer    :invigorate_id,          null: false
      t.integer    :water_id,               null: false
      t.references :user,                   null: false, foreign_key: true
      t.timestamps
    end
  end
end
