ActiveAdmin.register Agenda do
  permit_params :name, scheduals_attributes: [ :time, :content, :speaker ]

  index do
    column :name
    default_actions
  end

  form do |f|
    f.inputs "Agenda Details" do
      f.input :name
      # f.has_many :scheduals, allow_destroy: true do |sf|
      # TODO, cann't remove child obejct
      f.has_many :scheduals do |sf|
        sf.input :time
        sf.input :content
        sf.input :speaker
      end
    end
    f.actions
  end

end
