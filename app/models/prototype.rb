#to create an object by cloning a prototype.
class Prototype
  def Clone
    raise NotImplementedError, 'clone() must be defined in sub class'
  end
end

class ConcretePrototype1 < Prototype
  def Clone
    return self.clone
  end

  def useprototype
    puts "Inside ConcreatePrototype1:useprototype()"
  end
end

class ConcretePrototype2 < Prototype
  def Clone
    return self.clone
  end

  def useprototype
    puts "Inside ConcreatePrototype2:useprototype()"
  end
end

cp1obj = ConcretePrototype1.new
cp2obj = ConcretePrototype2.new

cpobj = cp1obj.Clone
cpobj.useprototype

cpobj = cp2obj.Clone
cpobj.useprototype