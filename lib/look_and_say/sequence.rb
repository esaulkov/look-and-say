# frozen_string_literal: true

module LookAndSay
  class Sequence
    def initialize(init_digit)
      raise ArgumentError, 'It is not correct number' unless ('0'..'9').include?(init_digit.to_s)

      @init_digit = init_digit.to_s
    end

    def print(count)
      output_array = [@init_digit]
      output_array << Member.new(output_array.last).display while output_array.size < count

      output_array
    end
  end
end
