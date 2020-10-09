# Introducing the UKClockChange gem

    require 'ukclockchange'

    h = UKClockChange.next

    #=> {:change=>:back, :date=>#<Date: 2020-10-25 ...>, 
    #    :days_remaining=>16, :countdown_duration=>"15 days 14 hrs", 
    #    :formatted_date=>"Sunday the 25th of October"} 

    puts "The clocks go %s %s." % [h[:change], h[:formatted_date]]

    <pre>The clocks go back Sunday the 25th of October.</pre>

## Resources

* ukclockchange https://rubygems.org/gems/ukclockchange

clock change clockchange bst gmt date time forward back
