ActiveSupport.on_load :action_controller do
  helper RailsVoter::Engine.helpers
end
