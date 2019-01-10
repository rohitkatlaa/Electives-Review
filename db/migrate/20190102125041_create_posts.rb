class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :comments
      t.references :elective
      t.timestamps null: false
    end
  end
end
