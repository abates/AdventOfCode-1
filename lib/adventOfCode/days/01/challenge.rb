module AdventOfCode
  module Day1
    class Challenge
      def initialize(filename)
        @position = Position.new
        set_contents filename
      end

      def set_contents(filename)
        # Get instructions
        file = File.open input_path(filename)
        @contents = file.read
      end

      def run_part_1
        # Get an array of the directions
        directions_to_hq = @contents.split(', ')

        directions_to_hq.each do |direction|
          direction = Direction.new(direction)
          @position = direction.take_direction @position
        end

        return @position.total_distance_from_start
      end

      private
      def input_path(filename)
        File.join(File.expand_path('..', File.expand_path('..', File.dirname(File.expand_path(__FILE__)))), "inputs/day1/#{filename}")
      end
    end
  end
end
