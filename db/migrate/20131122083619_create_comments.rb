class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.timestamp :posted_at
      t.references :review, index: true

      t.timestamps
    end
  end
end
