class Service < ActiveRecord::Base
  attr_accessible :basic_program, :description, :express_program, :image, :name, :description, :translations_attributes, :service_feature_ids, :tag_list
  mount_uploader :image, ServiceImageUploader
  translates :name, :description
  accepts_nested_attributes_for :translations
  has_and_belongs_to_many :service_features
  acts_as_taggable
end
