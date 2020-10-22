class AddCityToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :city_name, :string
  end
end
