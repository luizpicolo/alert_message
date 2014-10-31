module AlertMessage
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_gfiles_alert
      copy_file "alerts.js", "app/assets/javascripts/alerts.js"
      copy_file "alerts.css.scss", "app/assets/stylesheets/alerts.css.scss"
      copy_file "_alerts.html.erb", "app/views/layouts/_alerts.html.erb"
    end
  end
end
