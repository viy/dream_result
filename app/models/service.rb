class Service < ActiveRecord::Base
  attr_accessible :basic_program, :description, :express_program, :image_path, :name
end
