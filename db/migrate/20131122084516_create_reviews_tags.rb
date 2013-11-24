class CreateReviewsTags < ActiveRecord::Migration
  def change
    create_table :reviews_tags, id: false do |t|
      t.references :review, index: true
      t.references :tag, index: true
    end

    add_index :reviews_tags, [ :review_id, :tag_id ], unique: true
  end
end
