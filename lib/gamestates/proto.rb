# frozen_string_literal: true

require_relative '../util/logger'
require_relative '../util/cli'
require_relative 'initializer'

##
# Proto is a new project!
class Proto
  attr_accessor :is_running, :cli, :actors

  def initialize(cli = CLI.new)
    @is_running = true
    @cli = cli
    @actors = []
  end

  def run
    @cli.out("Welcome to Proto.\n")
    @actors.push(Initializer.new.run)
    puts(@actors[0].name)
    main_loop
  end

  def main_loop
    while @is_running
      @cli.out('Would you like to quit Proto? (y/n): ')
      input = @cli.in
      if input == 'y'
        @is_running = false
        @cli.out("Thanks for playing!\n")
      end
    end
  end
end
