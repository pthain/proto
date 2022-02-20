# frozen_string_literal: true

class Actor
  attr_reader :name
  attr_accessor :attributes

  def initialize(name)
    @name = name
    @attributes = {}
  end
end
