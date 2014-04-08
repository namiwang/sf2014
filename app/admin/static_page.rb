ActiveAdmin.register StaticPage do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :content
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
    default_actions
  end

  show do |ad|
    attributes_table do
      row :name
      row :text do
        raw ad.content
      end
    end
  end

  form do |f|
    f.inputs "Static Page Details" do
      f.input :name, input_html: {disabled: true}
      f.input :content, as: :ckeditor
      # f.cktext_area :text
    end
    f.actions
  end 
 
end
