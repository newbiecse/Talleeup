ActiveAdmin.register Component do

  permit_params :name
  index do
    selectable_column
    id_column
    column :name
    column :created_at
    actions
  end

  filter :name
  filter :created_at
  form do |f|
    f.inputs "Component Details" do
      f.input :name
    end
    f.actions
  end

end
