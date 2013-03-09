class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :type
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :state
      t.string :zipcode
      t.datetime :birthday

      t.timestamps
    end
  end
end
