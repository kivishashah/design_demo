class CustomSingleton
	attr_reader :name
	private_class_method :new
	
	def initialize(name)
		@name = name
	end

	def self.instance(name)
		@instance ||= new(name)
	end
	
end