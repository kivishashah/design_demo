#using subclass to create object of a derived class of another class which is not known.
class Product
	def useproduct
		raise NotImplementedError, 'useproduct() must be defined in subclass'
	end
end

class ConcreteProduct < Product
	def useproduct
		puts 'Inside ConcreteProduct:useproduct()'
	end
end

class Creator
	def factorymethod
		raise NotImplementedError, 'factorymethod() must be defined in subclass'
	end
	def anoperation
		@product = factorymethod()
		return @product
	end
end

class ConcreteCreator < Creator
	def factorymethod
		return ConcreteProduct.new
	end
end

prodCreator = ConcreteCreator.new
prod = prodCreator.anoperation
prod.useproduct