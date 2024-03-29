class Article < ActiveRecord::Base
  has_attached_file :cover, :default_url => "/images/article/cover/default.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
end
