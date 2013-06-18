def irbrc_puts message
  puts ".irbrc: #{message}"
end

def profile(output = STDOUT)
  require 'ruby-prof'

  result = RubyProf.profile do
    yield
  end

  printer = RubyProf::GraphPrinter.new(result)
  printer.print( output, {} )
end

def show_log
  irbrc_puts "Logging ActiveRecord::Base to STDOUT"
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

def hide_log
  irbrc_puts "Logging ActiveRecord::Base to /dev/null"
  ActiveRecord::Base.logger = Logger.new("/dev/null")
end
