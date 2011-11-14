class RemoveDescriptionFromBooks < ActiveRecord::Migration
  def up
    remove_column :books, :description
  end

  def down
  end
end
