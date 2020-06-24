class AddUserIdToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :user_id, :integer
    add_index :bikes, :user_id
  end
end
