class Owner
  def name
    name = 'Yuxuan Zhao'
  end

  def birthdate
    birthdate = Date.new(1993, 5, 21)
  end

  def countdown
    today = Date.today
    #birthday at this year
    birthday = Date.new(today.year, birthdate.month, birthdate.day)
    if birthday > today
      countdown = (birthday - today).to_i
    else
      countdown = (birthday.next_year - today).to_i
    end
  end

end
