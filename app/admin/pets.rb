ActiveAdmin.register Pet do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :history, :sex, :size, :breed, :user_id, :sterilized, :age, :is_adopted
  #
  # or
  #
  permit_params do
    permitted = [:name, :history, :sex, :size, :breed, :user_id, :sterilized, :age, :is_adopted]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end

  index do
    column :name
    column :sex
    column :size
    column :user
    column :created_at.to_s
    column :is_adopted
    actions
  end
end
