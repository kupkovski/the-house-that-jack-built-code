# frozen_string_literal: true

require_relative './default_order'
require_relative './random_order'

require_relative './default_formatter'
require_relative './echo_formatter'

# Main class to recite The House that Jack Built nursery rhyme
class House
  attr_reader :formatter, :data

  def initialize(orderer: DefaultOrder.new, formatter: DefaultFormatter.new)
    @formatter = formatter
    @data = orderer.order(DATA)
  end

  DATA = [
    'the horse and the hound and the horn that belonged to',
    'the farmer sowing his corn that kept',
    'the rooster that crowed in the morn that woke',
    'the priest all shaven and shorn that married',
    'the man all tattered and torn that kissed',
    'the maiden all fornlorn that milked',
    'the cow with the crumpled horn that tossed',
    'the dog that worried',
    'the cat that killed',
    'the rat that ate',
    'the malt that lay in',
    'the house that Jack built'
  ]

  def recite
    (1..data.length).map { |i| line(i) }.join("\n")
  end

  def line(number)
    "This is #{phrase(number)}.\n"
  end

  def phrase(number)
    parts(number).join(' ')
  end

  def parts(number)
    formatter.format(data.last(number))
  end

  def data
    @data ||= DATA
  end
end
