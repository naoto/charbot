module Charbot
  class Sentence

    attr_reader :nodes

    def initialize
      @nodes = {}
    end

    def <<(ary)
      if @nodes[ary[0]].nil?
        @nodes[ary[0]] = {}
        @nodes[ary[0]][ary[1]] = [ary[2]]
      elsif @nodes[ary[0]][ary[1]].nil?
        @nodes[ary[0]][ary[1]] = [ary[2]]
      else
        if !@nodes[ary[0]][ary[1]].include?(ary[2])
          @nodes[ary[0]][ary[1]] << ary[2]
        end
      end
    end
  end
end
