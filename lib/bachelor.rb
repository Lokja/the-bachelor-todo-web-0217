
require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ''
  data.each do |seasonh, contarray|
    # binding.pry
    contarray.each do |contestant|
      contestant.each do |stat, val|
        # binding.pry
        if seasonh == season && val == "Winner"
          winner = contestant["name"]
          # binding.pry
        end
      end
    end
  end
  winner.split(' ').shift.to_s
end

def get_contestant_name(data, occupation)
  # code here
  person = ''
  data.each do |seasonh, contarray|
    # binding.pry
    contarray.each do |contestant|
      contestant.each do |stat, val|
        # binding.pry
        if val == occupation
          person = contestant["name"]
          # binding.pry
        end
      end
    end
  end
  person
end

def count_contestants_by_hometown(data, hometown)
  # code here
  i = 0
  data.each do |seasonh, contarray|
    # binding.pry
    contarray.each do |contestant|
      contestant.each do |stat, val|
        # binding.pry
        if val == hometown
          i += 1
          # binding.pry
        end
      end
    end
  end
  i
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |seasonh, contarray|
    # binding.pry
    contarray.each do |contestant|
      contestant.each do |stat, val|
        # binding.pry
        if val == hometown
          occupation << contestant["occupation"]
          # binding.pry
        end
      end
    end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  # code here
  avgarr = []
  data.each do |seasonh, contarray|
    # binding.pry
    contarray.each do |contestant|
      contestant.each do |stat, val|
        # binding.pry
        if stat == "age" && seasonh == season
          avgarr << val
          # binding.pry
        end
      end
    end
  end
  # binding.pry
  avg = avgarr.map{|no| no.to_i}.inject(0){|sum,x| sum + x }.to_f / avgarr.size
  avg.round
end
