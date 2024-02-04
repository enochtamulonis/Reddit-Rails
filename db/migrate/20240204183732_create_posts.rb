class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :forum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
