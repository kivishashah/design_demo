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

  def UsePrototype
    puts "Inside ConcreatePrototype1:UsePrototype()"
  end
end

class ConcretePrototype2 < Prototype
  def Clone
    return self.clone
  end

  def UsePrototype
    puts "Inside ConcreatePrototype2:UsePrototype()"
  end
end

cp1obj = ConcretePrototype1.new
cp2obj = ConcretePrototype2.new

cpobj = cp1obj.Clone
cpobj.UsePrototype

cpobj = cp2obj.Clone
cpobj.UsePrototype