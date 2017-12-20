class CreateContacs < ActiveRecord::Migration[5.1]
  def change
    create_table :contacs do |t|
      t.string :family_name
      t.string :given_name
      t.references :company
      t.string :title
      t.string :phone
      t.string :email
      t.string :website
      t.text :address
      t.string :customer_id
      t.text :additional_info

      t.timestamps
    end
  end
end
