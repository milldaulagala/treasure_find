class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.text :condition
      t.text :manufacture
      t.text :manufacture_date
      t.text :image_data
      t.text :dimension
      t.decimal :weight
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
