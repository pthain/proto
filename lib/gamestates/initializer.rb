# frozen_string_literal: true

require_relative '../actors/actor'
require_relative '../attributes/attribute'

class Initializer
  def initialize; end

  def run
    # Create one actor and return it.
    Actor.new('MyNewActor')
  end
end
