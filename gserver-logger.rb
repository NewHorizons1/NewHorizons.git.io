
  def get_end_of_log_file
    File.open("/var/log/system.log") do |log|
      log.seek(-500, IO::SEEK_END)    # back up 500 characters from end
      log.gets                        # ignore partial line
      log.read                        # and return rest
    end
 # def get_end_of_log_file
  #  File.open("/var/log/system.log") do |log|
   #   log.seek(-500, IO::SEEK_END)    # back up 500 characters from end
  #    log.gets                        # ignore partial line
   #   log.read                        # and return rest
  #  end
