require 'ysd-md-user-profile' if not defined?Users::Profile
require 'ysd_md_fieldset'

module Users
  
  # Opens the Profile Class to include the hobbies information
  class Profile
    include FieldSet::Hobbies
  end
  
end #Users
