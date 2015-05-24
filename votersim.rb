### VOTERSIM.RB

class Voter
  attr_accessor :name, :politics, :politician_preference

  def initialize(name, politics)
    @name = name
    @politics = politics
    @politician_preference = ""

  end
end

class Politician
  attr_accessor :name, :party

  def initialize(name, party)
    @name = name
    @party = party
  end

end

class Speech
  attr_accessor :politician_name, :politician_party, :voter_name, :voter_politics
  def initialize(politician_name, politician_party, voter_name, voter_politics)
    @politician_name = politician_name
    @politician_party = politician_party
    @voter_name = voter_name
    @voter_politics = voter_politics  
  end

  def new_speech
    p_length = politicians.length
    v_length = voters.length

    index = rand(p_length -1)
    politician = politicians(index)
    puts "politician: #{politician.politician_name}, #{politician.politician_party}"

    index = rand(v_length -1)
    voter = voters(index)
    puts "voter: #{voter.voter_name}, #{voter_politics}"



  def calculate_voter_preference
    luck_of_draw = rand(20) + 1
    case party
    when "Democrat"
      case voter.politics
      when "Tea"
        if luck_of_draw >= 19 then politician_preference = "name"
        end
      when "Conservative"
        if luck_of_draw >= 16 then politician_preference = "name"
        end
      when "Neutral"
        if luck_of_draw >= 11 then politician_preference = "name"
        end
      when "Liberal"
        if luck_of_draw >= 6 then politician_preference = "name"
        end
      when "Socialist"
        if luck_of_draw >= 3 then politician_preference = "name"
        end
      else missing_voter_politics
      end
    when "Republican"
      case politics
      when "Socialist"
        if luck_of_draw >= 19 then politician_preference = "name"
        end
      when "Liberal"
        if luck_of_draw >= 16 then politician_preference = "name"
        end
      when "Neutral"
        if luck_of_draw >= 11 then politician_preference = "name"
        end
      when "Conservative"
        if luck_of_draw >= 6 then politician_preference = "name"
        end
      when "Tea"
        if luck_of_draw >= 3 then politician_preference = "name"
        end
      else missing_voter_politics
      end
    else missing_politician_party
    end
  end

  def missing_politician_party
    puts "missing #{politician_party} for speech by #{politician_name} to #{voter_name}!"
  end

  def missing_voter_politics
    puts "missing #{voter_politics} for speech by #{politician_name} to #{voter_name}!"
  end
end

def test_voter_sim

  voters = []
  politicians = []
  speeches = []

  print "Voter name? "
  name = gets.chomp
  print "Voter politics? "
  politics = gets.chomp
  new_voter = Voter.new(name, politics)
  voters << new_voter

  p "#{new_voter.name}, #{new_voter.politics} has been instantiated"
  p voters

  print "Politician name? "
  name = gets.chomp
  print "Politician party? "
  party = gets.chomp
  new_politician = Politician.new(name, party)
  p "#{new_politician.name}, #{new_politician.party} has been instantiated"
  politicians << new_politician
  p politicians

  # print "speech giver?"
  # politician = gets.chomp
  # print "speech givee?"
  # voter = gets.chomp

  new_speech

end

test_voter_sim
