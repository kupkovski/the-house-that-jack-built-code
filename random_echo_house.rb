# frozen_string_literal: true

require_relative 'random_house'
require_relative 'echo_house'

# # Class to recite a randomized AND echoed version of The House that Jack Built nursery rhyme
# class RandomEchoHouse < RandomHouse
#   def parts(number)
#     super(number).zip(super(number)).flatten
#   end
# end

# # Class to recite a randomized AND echoed version of The House that Jack Built nursery rhyme
# class RandomEchoHouse < EchoHouse
#   def data
#     @data ||= super.shuffle
#   end
# end

# Class to recite a randomized AND echoed version of The House that Jack Built nursery rhyme
class RandomEchoHouse < House
  def parts(number)
    super(number).zip(super(number)).flatten
  end

  def data
    @data ||= super.shuffle
  end
end
