require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
   holiday_supplies[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, things|
        things << supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |day, things|
        things << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_stuff = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, things|
        winter_stuff << things
      end
    end
  end
  winter_stuff.flatten
end

def all_supplies_in_holidays(holiday_hash)
   holiday_hash.each do |season, holiday|
    puts  season.to_s.capitalize + ":"
    holiday.each do |day, things|
     puts "  #{day.to_s.split("_").collect{|name|name.capitalize}.join(" ")}: #{things.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.each do |season, holiday|
    holiday.each do |day, things|
      if things == "BBQ"
        return day
     # binding.pry
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
        end
      end
    end
  end
end







