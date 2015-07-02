require_relative('user.rb')
class Login
	def check(user_email, user_pass)
		
		data = YAML::load(File.open('data.yml'))
		
	data.each do |user|
		if user.email == user_email 
			if user.pass == user_pass
				return true
			end

		end
	end
	return false

	end
end