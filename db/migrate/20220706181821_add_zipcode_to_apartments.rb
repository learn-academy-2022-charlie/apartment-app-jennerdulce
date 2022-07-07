class AddZipcodeToApartments < ActiveRecord::Migration[7.0]
  def change
    add_column :apartments, :zipcode, :string
  end
end
