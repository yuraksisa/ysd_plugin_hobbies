Gem::Specification.new do |s|
  s.name    = "ysd_plugin_hobbies"
  s.version = "0.1.1"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2012-03-27"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb','views/**/*.erb','i18n/**/*.yml','static/**/*.*'] 
  s.description = "Extension for managing hobbies"
  s.summary = "Extension for managing hobbies"
  
  s.add_runtime_dependency "ysd_core_plugins"
  s.add_runtime_dependency "ysd_md_fieldset"
  
end