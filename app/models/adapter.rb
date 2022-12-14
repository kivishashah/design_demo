#provide a way for reusing an existing class.
class Target
	def request
		raise NotImplementedError,'request() must be defined in subclass'
	end
end

class Adapter < Target
	@adaptee

	def initialize
		@adaptee = Adaptee.new
	end

	def request
		puts "Inside Adapter::request()"
		@adaptee.specificrequest
	end
end

class Adaptee
	def specificrequest
		puts "Inside Adaptee::specificrequest()"
	end
end

target = Adapter.new
target.request