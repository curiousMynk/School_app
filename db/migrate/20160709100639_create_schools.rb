class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.integer :pincode
      t.string :landline_no_1
      t.string :landline_no_2
      t.string :fax
      t.string :website
      t.string :email_id
      t.string :b_id
      t.string :shifts
      t.string :contact_person
      t.string :mobile_no
      t.string :hindi_name
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
