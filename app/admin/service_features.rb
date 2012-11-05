ActiveAdmin.register ServiceFeature do
  menu :parent => "Services"
  config.filters = false

  form do |f|
    f.globalize_inputs :translations do |lf|
      lf.inputs do
        lf.input :name
        lf.input :description

        lf.input :locale, :as => :hidden
      end
    end
    f.inputs :image

    f.buttons
  end

  index do
    I18n.locale = :ru
    selectable_column
    id_column
    column :name
    column :description
    column :image do |service|
      image_tag(service.image, :class => "service-image-index")
    end
    default_actions
  end

  show do |ad|
    I18n.locale = :ru
    attributes_table do
      row :name
      row :description
      row :image do
        image_tag(ad.image)
      end
    end
    active_admin_comments
  end
end
