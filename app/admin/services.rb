ActiveAdmin.register Service do
  filter :name
  filter :description

  index do
    selectable_column
    id_column
    column :name
    column :basic_program
    column :express_program
    column :description
    column :image do |service|
      image_tag(service.image, :class => "service-image-index")
    end
    default_actions
  end

  show do |ad|
    attributes_table do
      row :name
      row :basic_program
      row :express_program
      row :description
      row :image do
        image_tag(ad.image)
      end
    end
    active_admin_comments
  end

end
