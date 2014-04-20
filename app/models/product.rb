class Product < ActiveRecord::Base

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "150x150>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true

end
