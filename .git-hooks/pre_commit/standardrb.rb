module Overcommit::Hook::PreCommit
  class Standardrb < Base
    def run
      command  = ["standardrb"]
      messages = []
      result   = execute(command, args: applicable_files)

      # Preamble are in the first 2 lines of output
      # Notice are the last 2 lines of output
      results = result.stdout.split("\n")[2..-3] || []

      # puts "#{file} - results: #{results}"

      unless results.empty?
        error_message = results.join("\n")
        message = Overcommit::Hook::Message.new(:error, nil, nil, error_message)
        messages << message
      end

      messages
    end
  end
end
