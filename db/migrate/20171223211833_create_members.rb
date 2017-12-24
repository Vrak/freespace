class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :email
      t.string :emergency_contact
      t.string :emerg_phone
      t.string :med_history
      t.string :dependant
      t.string :vehicle_licence
      t.string :agrees_waiver

      t.timestamps
    end
  end
end
