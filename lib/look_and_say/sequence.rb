module LookAndSay
  class Sequence
    def initialize(init_digit)
      raise ArgumentError, 'It is not correct number' unless ('0'..'9').include?(init_digit.to_s)

      @init_digit = init_digit.to_s
    end

    def print(count)
      output_array = [@init_digit]
      while output_array.size < count do
        output_array << Member.new(output_array.last).display
      end

      output_array
    end
  end
end
