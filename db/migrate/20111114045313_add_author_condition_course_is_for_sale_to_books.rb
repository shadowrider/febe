class AddAuthorConditionCourseIsForSaleToBooks < ActiveRecord::Migration
  def change
    add_column :books, :author, :string
    add_column :books, :condition, :string
    add_column :books, :course, :string
    add_column :books, :is_for_sale, :boolean
  end
end
