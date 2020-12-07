class Day01
  class InvalidEntriesError < StandardError; end

  class << self

    def part_a(target_sum, entries)
      set = Set.new
      entries.each do |entry|
        if(set.include?(target_sum - entry))
          return entry * (target_sum - entry)
        else
          set.add(entry)
        end
      end

      raise InvalidEntriesError
    end


    def part_b(target_sum, entries)
      combinations = entries.combination(3)
      matching = combinations.find {|triad| triad.inject(:+) == target_sum }

      if matching
        matching.inject(:*)
      else
        raise InvalidEntriesError
      end
    end

  end
end
