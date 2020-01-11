class Timer
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    seconds = @seconds
    hours = seconds / 3600
    seconds = seconds - (hours * 3600)
    minutes = seconds / 60
    seconds = seconds - (minutes * 60)
    [padded(hours), padded(minutes), padded(seconds)].join(":")
  end

  def padded(num)
    if num < 10
      "0" + num.to_s
    else
      num.to_s
    end
  end
end
