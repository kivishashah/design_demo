# Singleton design pattern in Ruby to create one and only one instance of a class.
require "singleton"

class UserData
  include Singleton

  def SetData(num)
    @data = num 
  end

  def GetData
    return @data
  end
end

UserData.instance().SetData(20)
puts "Data=#{UserData.instance().GetData()}"