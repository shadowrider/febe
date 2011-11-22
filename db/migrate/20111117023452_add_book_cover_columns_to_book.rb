class AddBookCoverColumnsToBook < ActiveRecord::Migration
  def change
    add_column :books, :cover_file_name, :string
    add_column :books, :cover_content_type, :string
    add_column :books, :cover_file_size, :integer
    add_column :books, :cover_updated_at, :datetime
  end
end
