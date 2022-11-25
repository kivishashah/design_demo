class User
	attr_accessor :first_name, :last_name, :birthday, :gender, :roles, :status, :email, :password

	def initialize(first_name=nil, last_name=nil, birthday=nil, gender=nil, roles=[], status=nil, email=nil, password=nil)
		@first_name = first_name
		@last_name = last_name
		@birthday = birthday
		@gender = gender
		@roles = roles
		@status = status
		@email = email
		@password = password
	end
end