def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat?(person, food)
  return person[:favourites][:snacks].include?(food)
end

def add_friend(person, friends_name)
  person[:friends] << friends_name
  return person[:friends].count()
end

def remove_friend(person, friends_name)
  person[:friends].delete(friends_name)
  return person[:friends].count()
end

def get_total_money(people)
  total = 0
  people.each {|person| total += person[:monies]}
  return total
end

def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
  return [lender[:monies],lendee[:monies]]
end

def concatenate_favs(people)
  total_favs = []
  for person in people
    total_favs.push(person[:favourites][:snacks])
  end
  return total_favs.flatten.count
end

def jonny_no_mates(people)
  total_normans = []
  for person in people
    if person[:friends] == []
      total_normans.push(person[:name])
    end
  end
  return total_normans
end
