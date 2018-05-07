class CreateAppraisals < ActiveRecord::Migration[5.1]
  def change
    create_table :appraisals do |t|
      t.text :content
      t.decimal :value
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
