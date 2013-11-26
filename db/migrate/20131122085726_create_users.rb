class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :credential
      t.text :avatar_href

      t.timestamps
    end
  end
end
