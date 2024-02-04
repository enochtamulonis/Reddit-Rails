class AddScoreToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :score, :integer, default: 0
  end
end
