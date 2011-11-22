class Book < ActiveRecord::Base
  has_attached_file :cover, :styles => { :medium => "210x320>", :thumb => "60x91>" }
  validates_attachment_presence :cover
  validates_attachment_size :cover, :less_than => 2.megabytes
  validates_attachment_content_type :cover, :content_type => ['image/jpeg', 'image/png']
  validates_numericality_of :price, :greater_than_or_equal_to => 0.01
  validates_presence_of :isbn, :title, :author, :course, :price
end
