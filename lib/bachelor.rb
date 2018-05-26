require "pry"
def get_first_name_of_season_winner(data, season)
data[season].each do |contestant|
  contestant.each do |info, detail|
    if detail == "Winner"
      return data[season][0]["name"].split(" ").first
  end
end
end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |detail|
      if detail.has_value?(occupation)
        return detail.values[0]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, info|
    info.each do |detail|
      if detail.has_value?(hometown)
        counter += 1
  end
  end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |detail|
      if detail.has_value?(hometown)
        return detail.values[3]
      end
    end
  end
end

def get_average_age_for_season(data, season)
ages = []
data[season].each do |contestant|
  contestant.each do |info, detail|
    if info == "age"
    ages << detail.to_i
  end
end
end
sum = 0.0
ages.each { |x| sum += x }
return (sum / ages.length).round
end
