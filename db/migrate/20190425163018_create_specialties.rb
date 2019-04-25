class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
  	remove_column :doctors, :specialty, :string
    create_table :specialties do |t|
     t.string :specialty
      

      t.timestamps
    end
  end
end