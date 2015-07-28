# assignment 37: meetup
# author: Jason Morse
# date: July 28, 2015
#

class Meetup

  DAYS =
    { 
      sunday: 0,
      monday: 1,
      tuesday: 2,
      wednesday: 3,
      thursday: 4,
      friday: 5,
      saturday: 6
    }

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    case schedule
    when :first
      find_day(1, 7, weekday)
    when :second
      find_day(8, 14, weekday)
    when :third
      find_day(15, 21, weekday)
    when :fourth
      find_day(22, 28, weekday)
    when :last
      last_week_end = Date.new(@year, @month, -1).day
      last_week_start = last_week_end - 6
      find_day(last_week_start, last_week_end, weekday)
    when :teenth
      find_day(13, 19, weekday)
    end
  end

  def find_day(start_day, end_day, weekday)
    (start_day..end_day).each do |day|
      date = Date.new(@year, @month, day)
      return date if date.wday == DAYS[weekday]
    end
  end

end
