# frozen_string_literal: true

module LookAndSay
  class Member
    def initialize(source)
      @source = source.to_s
    end

    def display
      @source
        .split('')
        .chunk_while { |i, j| i == j }
        .to_a
        .map { |x| [x.size, x.first] }
        .flatten
        .join('')
    end
  end
end
