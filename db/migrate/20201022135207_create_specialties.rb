class CreateSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :specialties do |t|
      t.string :specialty
      t.belongs_to :doctor, index: true
      t.timestamps
    end
  end
end
