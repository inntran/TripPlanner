class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.integer :airport_id
      t.boolean :isadmin
      t.integer :status


      t.string :persistence_token
      t.string :crypted_password
      t.string :password_salt

      t.integer :login_count, :null => false, :default => 0
      t.integer :failed_login_count, :null => false, :default => 0
      t.datetime :last_request_at
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string :current_login_ip
      t.string :last_login_ip
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
