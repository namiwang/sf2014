ActiveAdmin.register Article do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :content, :show_in_home_slide, :show_in_home_topic, :cover
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column :title
    default_actions
  end

  form do |f|
    f.inputs "Article Details" do
      f.input :title
      f.input :show_in_home_slide
      f.input :show_in_home_topic
      f.input :cover, required: false, as: :file
      f.input :content, as: :ckeditor
    end
    f.actions
  end

  show do |ad|
    attributes_table do
      row :title
      row :show_in_home_slide
      row :show_in_home_topic
      row :cover do
        image_tag ad.cover.url
      end
      row :content do
        raw ad.content
      end
    end
  end

end
