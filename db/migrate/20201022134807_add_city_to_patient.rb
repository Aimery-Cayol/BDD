class AddCityToPatient < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :city_name, :string
  end
end
