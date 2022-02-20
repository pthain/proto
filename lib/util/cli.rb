# frozen_string_literal: true

##
# Abstracts getting user input. Allows a test to write to this file.
class CLI
  def initialize(input = $stdin, output = $stdout)
    @input = input
    @output = output
  end

  def out(string)
    @output.print(string)
  end

  def in
    @input.gets.chomp
  end
end
