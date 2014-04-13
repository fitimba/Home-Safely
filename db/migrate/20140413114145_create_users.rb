class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :contact_1_name
      t.string :contact_1_number
      t.string :contact_2_name
      t.string :contact_2_number
      t.string :contact_3_name
      t.string :contact_3_number
      t.timestamps
    end
  end
end
