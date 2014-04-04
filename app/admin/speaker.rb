ActiveAdmin.register Speaker do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :subtitle, :text
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  form do |f|
    f.inputs "Speaker Details" do
      f.input :name
      f.input :subtitle
      f.input :text, as: :ckeditor
      # f.cktext_area :text
    end
    f.actions
  end

  
end
