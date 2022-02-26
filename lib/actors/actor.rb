# frozen_string_literal: true

##
# Generic Actor. Represents any entity in the game, from Players, NPCs, Inanimate objects, and more.
class Actor
  attr_reader :name
  attr_accessor :attributes

  def initialize(name)
    @name = name
    @attributes = {}
  end
end
