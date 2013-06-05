module ApplicationHelper
   def object_url(object, options = {})
   	if object
      send "#{object.class.name.underscore.split('/').last}_path", object, options
    else
      ''
    end
    end	
end
