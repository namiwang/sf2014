class Schedual < ActiveRecord::Base
  belongs_to :agenda, dependent: :destroy
end
