class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :restaurant
      t.text :body
      t.references :user, index: true
      t.date :published_on

      t.timestamps
    end
  end
end
