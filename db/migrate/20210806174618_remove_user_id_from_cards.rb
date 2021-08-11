class RemoveUserIdFromCards < ActiveRecord::Migration[6.1]
  def change
    remove_column :cards, :user_id, :integer
  end
end
