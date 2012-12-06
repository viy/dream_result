class Service < ActiveRecord::Base
  attr_accessible :basic_program, :description, :express_program, :image, :name, :description, :translations_attributes, :service_feature_ids, :tag_list, :product_ids
  mount_uploader :image, ServiceImageUploader
  translates :name, :description
  accepts_nested_attributes_for :translations
  has_and_belongs_to_many :service_features
  has_and_belongs_to_many :products
  acts_as_taggable

  def self.filtered_by_type(type)
    case type
      when "basic"
        where(basic_program:nil).where("basic_program != ?", 0)
      when "express"
        where(express_program:nil).where("express_program != ?", 0)
      else
        where(true)
    end
  end
end
