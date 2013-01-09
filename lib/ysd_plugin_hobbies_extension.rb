require 'ysd_md_fieldset_hobbies'
require 'ysd_plugin_hobbies_aspect'
require 'ui/ysd_ui_fieldset_render' unless defined?UI::FieldSetRender
require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Extension
#
module Huasi
  class HobbiesExtension < Plugins::ViewListener
  
    # ========= Aspects ==================
    
    #
    # Retrieve an array of the aspects defined in the plugin
    #
    # The attachment aspect (complement)
    #
    def aspects(context={})
      
      app = context[:app]
      
      aspects = []
      aspects << ::Plugins::Aspect.new(:hobbies, app.t.aspect.hobbies, FieldSet::Hobbies, HobbiesAspectDelegate.new)
                                               
      return aspects
       
    end    

  
  end #HobbiesExtension
end #Huasi