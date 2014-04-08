ActiveAdmin.register Speaker do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :subtitle, :text, :avatar
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column :name
    column :subtitle
    default_actions
  end

  form do |f|
    f.inputs "Speaker Details" do
      f.input :name
      f.input :subtitle
      f.input :avatar, required: false, as: :file
      f.input :text, as: :ckeditor
      # f.cktext_area :text
    end
    f.actions
  end

  show do |ad|
    attributes_table do
      row :name
      row :subtitle
      row :avatar do
        image_tag ad.avatar.url
      end
      row :text do
        raw ad.text
      end
      # Will display the image on show object page
    end
  end

end
