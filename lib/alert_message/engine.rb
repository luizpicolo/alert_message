module AlertMessage
  class Engine < ::Rails::Engine
    initializer 'alert_message.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
    end
  end
end
