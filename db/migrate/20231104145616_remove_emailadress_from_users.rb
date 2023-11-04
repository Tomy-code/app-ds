class RemoveEmailadressFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :emailadress, :string
  end
end
