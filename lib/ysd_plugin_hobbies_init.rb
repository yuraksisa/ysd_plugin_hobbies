require 'ysd-plugins' unless defined?Plugins::Plugin

Plugins::SinatraAppPlugin.register :hobbies do

   name=        'hobbies'
   author=      'yurak sisa'
   description= 'Add hobbies information'
   version=     '0.1'
   hooker       Huasi::HobbiesExtension
   sinatra_extension Sinatra::Hobbies
end