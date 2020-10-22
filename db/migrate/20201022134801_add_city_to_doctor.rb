class AddCityToDoctor < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :city_name, :string
  end
end
