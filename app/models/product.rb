class Product < ActiveRecord::Base
  attr_accessible  :image, :name, :description, :translations_attributes, :translations,  :tag_list
  mount_uploader :image, ProductUploader
  has_and_belongs_to_many :services
  translates :name, :description
  accepts_nested_attributes_for :translations
  acts_as_taggable
end
