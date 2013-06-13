def irbrc_puts message
  puts ".irbrc: #{message}"
end

def show_log
  irbrc_puts "Logging ActiveRecord::Base to STDOUT"
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

def hide_log
  irbrc_puts "Logging ActiveRecord::Base to /dev/null"
  ActiveRecord::Base.logger = Logger.new("/dev/null")
end

show_log if defined? ActiveRecord::Base
