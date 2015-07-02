class Post
	attr_accessor :post_date, :body
	def initialize(post_date, body)
		@post_date = post_date
		@body = body
	end
end