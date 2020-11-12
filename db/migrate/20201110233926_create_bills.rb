class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.boolean :is_paid
      t.float :total_price
      t.datetime :date
      t.timestamps
    end
    create_table :cpts do |t|
      t.string :cpt_code
      t.string :cpt_description
      t.float :price
      t.timestamps
    end
    create_table :icds do |t|
      t.string :category_code
      t.string :diagnosis_code
      t.string :full_code
      t.string :abbreviated_description
      t.string :full_description
      t.string :category_title
      t.timestamps
    end

  end
end
