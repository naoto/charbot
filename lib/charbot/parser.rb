require 'natto'

module Charbot
  class Parser

    def self.parse(path = "data/talk")
      parser = new(path)
      parser.generate
    end

    def initialize(path)
      @path = path
    end

    def generate
      natto = Natto::MeCab.new
      sentences = Charbot::Sentence.new
      file_load do |line|
        sentence = ["^"]
        natto.parse("#{line}。") do |s|
          if sentence.size > 2
            sentences << sentence
            sentence = [sentence[1], sentence[2]]
          end
          sentence << s.surface
        end
        sentences << sentence
      end
      sentences.nodes
    end

    def file_load
      File.open(@path) do |file|
        file.each_line do |line|
          yield line
        end
      end
    end
  end
end
