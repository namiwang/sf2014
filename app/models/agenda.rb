class Agenda < ActiveRecord::Base
  has_many :scheduals, dependent: :destroy
  accepts_nested_attributes_for :scheduals, allow_destroy: true
end
