class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :user
      t.references :doctor # to do make index
      t.string :description
      t.string :conclusion
      t.boolean :active, default: true
      t.timestamps
    end
    add_column :doctors, :phone_number, :string
    add_column :users, :phone_number, :string
  end
end
