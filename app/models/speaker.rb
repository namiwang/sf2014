class Speaker < ActiveRecord::Base
  has_attached_file :avatar, default_url: '/images/avatar/default.png'
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
