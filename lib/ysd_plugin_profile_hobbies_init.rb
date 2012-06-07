require 'ysd-plugins' unless defined?Plugins::Plugin
require 'ysd_plugin_profile_hobbies_extension'

Plugins::SinatraAppPlugin.register :profile_hobbies do

   name=        'profile hobbies'
   author=      'yurak sisa'
   description= 'Add hobbies information to the profile'
   version=     '0.1'
   hooker       Huasi::ProfileHobbiesExtension
   sinatra_extension Sinatra::ProfileHobbies
end