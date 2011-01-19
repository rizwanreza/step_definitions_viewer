require 'rubygems'
require 'terminal-display-colors'

module StepDefinitionsViewer
  class Parser
    def self.parse(filename)
      contents = IO.read(filename)
      scanned_contents = contents.scan(/(Given|When|Then) \/\^(.*)\$\//)
      result = {"Given" => [], "When" => [], "Then" => []}

      scanned_contents.each do |step|
        result.keys.each do |state|
          if step[0] == state
            result[state] << step[1]
          end
        end
      end

      result
    end

    def self.output(filename)
      result = parse(filename)
      puts "Given".red
      result["Given"].each do |step|
        puts "  #{step}"
      end
      puts
      puts "When".green
      result["When"].each do |step|
        puts "  #{step}"
      end
      puts
      puts "Then".blue
      result["Then"].each do |step|
        puts "  #{step}"
      end
    end
  end
end
