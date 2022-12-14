#provide a way for reusing an existing class.
class Target
	def Request
		raise NotImplementedError,'Request() must be defined in subclass'
	end
end

class Adapter < Target
	@adaptee

	def initialize
		@adaptee = Adaptee.new
	end

	def Request
		puts "Inside Adapter::Request()"
		@adaptee.SpecificRequest
	end
end

class Adaptee
	def SpecificRequest
		puts "Inside Adaptee::SpecificRequest()"
	end
end

target = Adapter.new
target.Request