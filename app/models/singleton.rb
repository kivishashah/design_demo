# Singleton design pattern in Ruby to create one and only one instance of a class.
require "singleton"

class UserData
  include Singleton

  def setdata(num)
    @data = num 
  end

  def getdata
    return @data
  end
end

UserData.instance().setdata(20)
puts "Data=#{UserData.instance().getdata()}"