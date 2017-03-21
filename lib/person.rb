class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
    if happiness < 0
      @happiness = 0
    elsif happiness > 10
      @happiness = 10
    else
      @happiness = happiness
    end
  end

  def hygiene=(hygiene)
    if hygiene < 0
      @hygiene = 0
    elsif hygiene > 10
      @hygiene = 10
    else
      @hygiene = hygiene
    end
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4 # reader
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3 # reader
    self.happiness += 2 # reader
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3 # reader
    friend.happiness += 3 # reader
    "Hi #{friend.name}! It's #{self.name}. How are you?" # reader
  end

  def start_conversation(friend, topic)
    case topic
    when 'politics'
      self.happiness -= 2 # reader
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    when 'weather'
      self.happiness += 1 # reader
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
