module UsersHelper

	def profile_picture(user) 
		image_tag(user.picture.url, alt: user.name, class: "profile_picture")
	end
end
