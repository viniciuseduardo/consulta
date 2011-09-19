Rails.application.config.generators do |g|
    g.test_framework = :rspec
    g.view_specs false
    g.helper_specs false
    g.request_specs false
    g.routing_specs false    
end