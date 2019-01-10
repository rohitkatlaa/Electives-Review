class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.integer :admin , default: 0
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
