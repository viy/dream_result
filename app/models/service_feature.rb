class ServiceFeature < ActiveRecord::Base
  attr_accessible :image, :name, :description, :translations_attributes
  translates :name, :description
  accepts_nested_attributes_for :translations
  mount_uploader :image, ServiceImageUploader
end
