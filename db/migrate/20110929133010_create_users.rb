class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :customer_type
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
