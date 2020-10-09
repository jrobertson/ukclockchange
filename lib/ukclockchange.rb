#!/usr/bin/env ruby

# file: ukclockchange.rb

require 'chronic_cron'
require 'date'
require 'human_speakable'
require 'chronic_duration'


module HumanizeDate

  refine Date do
    def humanize()
      HumanSpeakable.format_date(self)
    end
  end
end


class UKClockChange
  using HumanizeDate

  def self.next()
    Time.now.dst? ? self.back : self.forward
  end

  def self.back()
    clockchange()
  end

  def self.forward()
    clockchange("last Sunday in March at 1am")
  end

  def self.clockchange(s="last Sunday in October at 2am")

    t = ChronicCron.new(s).to_time
    seconds = (t - Time.now).to_i
    days = (t.to_date - Time.now.to_date).to_i

    {
      change: s =~ /October/ ? :back : :forward,
      date: t.to_date,
      days_remaining: days, 
      countdown_duration: ChronicDuration.output(seconds, units: 2),
      formatted_date: t.to_date.humanize
    }
  end
end

if __FILE__ == $0 then
  h = UKClockChange.next
  puts "The clocks go %s %s." % [h[:change], h[:formatted_date]]
end
