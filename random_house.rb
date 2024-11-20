# frozen_string_literal: true

require_relative 'house'

# Main class to recite a randomized version of The House That Jack Built rhyme
class RandomHouse < House
  def data
    @data ||= DATA.shuffle
  end
end
