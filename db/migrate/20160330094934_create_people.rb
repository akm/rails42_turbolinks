class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :prefecture
      t.string :tel

      t.timestamps null: false
    end
  end
end
