class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nickname
      t.integer :level
      t.string :kind
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
