require 'liquid'
require 'digest/md5'

module Locomotive
  module Liquid
    module Filters
      module GravatarFilter
 
	  def gravatar(email)
	  	hash = Digest::MD5.hexdigest(email)
		return "http://www.gravatar.com/avatar/#{hash}"
	  end
	 
	end
      end
    end
  end
	 
	::Liquid::Template.register_filter(GravatarFilter)
	
