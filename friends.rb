def get_name(person)
  return person[:name]
end

def get_fav_tv(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, search)
  for snack in person[:favourites][:snacks]
    if snack == search
      return true
    end
  end
  return false
end

def add_new_friend(person, name_added)
  person[:friends].push(name_added)
end

def delete_a_friend(person, name_deleted)
  person[:friends].delete(name_deleted)
end

def get_total_money(people)
  total_money = 0

  for person in people
    total_money += person[:monies]
  end
  return total_money
end
