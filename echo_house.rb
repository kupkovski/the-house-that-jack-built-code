# frozen_string_literal: true

require_relative 'house'

# Main class to recite a randomized version of The House That Jack Built rhyme
class EchoHouse < House
  def parts(number)
    super(number).zip(super(number))
  end
end
