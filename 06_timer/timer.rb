class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours, seconds = @seconds.divmod(60*60)
    minutes, seconds = seconds.divmod(60)
    "%02d:%02d:%02d" % [hours, minutes, seconds]
  end
end
