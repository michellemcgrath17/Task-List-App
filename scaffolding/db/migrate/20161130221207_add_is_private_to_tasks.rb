class AddIsPrivateToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :is_private, :boolean
  end
end
