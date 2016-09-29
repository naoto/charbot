require 'yaml'

module Charbot
  class Parsonal

    def initialize(path = "data/dic")
      @nodes = YAML.load_file(path)
    end

    def talk
      sentence = ["^"]
      sentence << @nodes[sentence[0]].keys.sample
      while !sentence.last.nil?
        sentence << choice(sentence[-2,2])
      end
      sentence.shift
      puts sentence.join
    end

    def choice(ary)
      word = nil
      if @nodes[ary[0]].nil?
        word = nil
      elsif @nodes[ary[0]][ary[1]].nil?
        word = nil
      else
        word = @nodes[ary[0]][ary[1]].sample
      end
      return word
    end
  end
end
