#using subclass to create object of a derived class of another class which is not known.
class Product
	def UseProduct
		raise NotImplementedError, 'UseProduct() must be defined in subclass'
	end
end

class ConcreteProduct < Product
	def UseProduct
		puts 'Inside ConcreteProduct:UseProduct()'
	end
end

class Creator
	def FactoryMethod
		raise NotImplementedError, 'FactoryMethod() must be defined in subclass'
	end
	def AnOperation
		@product = FactoryMethod()
		return @product
	end
end

class ConcreteCreator < Creator
	def FactoryMethod
		return ConcreteProduct.new
	end
end

prodCreator = ConcreteCreator.new
prod = prodCreator.AnOperation
prod.UseProduct