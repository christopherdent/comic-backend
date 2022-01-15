

# if Rails.env === 'production'  
#     Rails.application.config,session_store :cookie_store, key: '_comic-backend', domain: 'all'
# else
#      Rails.application.config.session_store :cookie_store, key: "_comic-backend"
#   end 
# end


Rails.application.config.session_store :cookie_store, key: '_comic-backend'