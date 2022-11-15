require 'singleton'
class SingletonModule
  include Singleton

  attr_accessor :name
end