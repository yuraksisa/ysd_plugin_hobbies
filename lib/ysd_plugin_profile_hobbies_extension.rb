require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Extension
#
module Huasi
  class ProfileHobbiesExtension < Plugins::ViewListener
  
    # ---------------- Profile Hooks -------------------------      
          
    #
    # Adds fields to edit the hobbies information in the profile form
    #
    def profile_form(context={})

      app = context[:app]
    
      hobbies_form = <<-HOBBIES_FORM

        <fieldset>
          <legend><%= t.profile_form.hobbies.title %></legend>        
          <div class="formrow">
            <label for="hobbies_i_love_to" class="fieldtitle"><%= t.profile_form.hobbies.i_love_to %></label>
            <input type="text" name="hobbies_i_love_to" id="hobbies_i_love_to" maxlength="80" class="fieldcontrol" <% if @document %> value="<%= @document.hobbies_i_love_to if @document.hobbies_i_love_to%>" <% end %> />
          </div>        
          <div class="formrow">
            <label for="hobbies_i_like_to" class="fieldtitle"><%= t.profile_form.hobbies.i_like_to %></label>
            <input type="text" name="hobbies_i_like_to" id="hobbies_i_like_to" maxlength="80" class="fieldcontrol" <% if @document %> value="<%= @document.hobbies_i_like_to if @document.hobbies_i_like_to%>" <% end %> />
          </div>
          <div class="formrow">
            <label for="hobbies_i_dont_like_to" class="fieldtitle"><%= t.profile_form.hobbies.i_dont_like_to %></label>
            <input type="text" name="hobbies_i_dont_like_to" id="hobbies_i_dont_like_to" maxlength="80" class="fieldcontrol" <% if @document %> value="<%= @document.hobbies_i_dont_like_to if @document.hobbies_i_dont_like_to%>" <% end %> />
          </div>
        </fieldset>
                                
      HOBBIES_FORM

      if String.method_defined?(:encode)
        hobbies_form.encode!('UTF-8')
      end
        
      app.erb hobbies_form  
    
    end
    
    #
    # Shows the hobbies information in the profile
    #
    def profile(context={}) 
    
      app = context[:app]
    
      hobbies = <<-HOBBIES
      
        <% if @document.hobbies_i_love_to and @document.hobbies_i_love_to.strip.length > 0 %>
          <div><span class="profile_literal"><%= t.profile.hobbies.i_love_to%></span> <%=@document.hobbies_i_love_to%></div>      
        <% end %>
        <% if @document.hobbies_i_like_to and @document.hobbies_i_like_to.strip.length > 0 %>
          <div><span class="profile_literal"><%= t.profile.hobbies.i_like_to%></span> <%=@document.hobbies_i_like_to%></div>      
        <% end %>
        <% if @document.hobbies_i_dont_like_to and @document.hobbies_i_dont_like_to.strip.length > 0 %>
          <div><span class="profile_literal"><%= t.profile.hobbies.i_dont_like_to%></span> <%=@document.hobbies_i_dont_like_to%></div>      
        <% end %>
                
      HOBBIES

      if String.method_defined?(:encode)
        hobbies.encode!('UTF-8')
      end
        
      app.erb hobbies      
    
    end    

    
  
  end #ProfileEducationAndEmploymentExtension
end #Huasi