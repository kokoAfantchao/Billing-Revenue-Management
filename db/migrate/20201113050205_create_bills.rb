class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :insurances do |t|
      t.string :member_name
      t.string :group_number
      t.string :insurance_name
      t.timestamps
    end
    create_table :bills, id: false do |t|
      t.primary_key :bill_id
      t.boolean :is_paid
      t.float :total_price
      t.datetime :date
      t.bigint :insurance_id
      t.string :cpt_codes
      t.string :icd_codes
      t.timestamps
    end
    create_table :cpts, id: false do |t|
      t.primary_key :cpt_id
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

    # add_foreign_key :bills,:insurances
    # create_join_table :cpts, :bills, column_options: { null: true }
    # create_join_table :icds, :bills, column_options: { null: true }
  end
end
