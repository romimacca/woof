ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      # span class: "blank_slate" do
        # span I18n.t("active_admin.dashboard_welcome.welcome")
        # small I18n.t("active_admin.dashboard_welcome.call_to_action")
      # end
    end

    # Here is an example of a simple dashboard with columns and panels.

    

    columns do
      column do
        h2 "Usuarios registrados por día"
        render 'shared/users_chart'

        panel "Recent Pets" do
          ul do
            Pet.last(5).map do |pet|
              li link_to(pet.name, admin_pet_path(pet))
            end
          end
        end
      end
      column do
        h2 "Mascotas ingresadas por día"
        render 'shared/pets_chart'


        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end

  end 
end
