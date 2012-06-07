#
# Routes
#
module Sinatra
    module ProfileHobbies
    
      def self.registered(app)
     
        # Add the local folders to the views and translations     
        app.settings.translations = Array(app.settings.translations).push(File.expand_path(File.join(File.dirname(__FILE__), '..', 'i18n')))       
       
       end
       
     end # ProfileHobbies
end # Sinatra