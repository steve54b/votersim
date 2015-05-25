### VOTERSIM.RB

class Voter
  attr_accessor :voter_name, :voter_politics, :voter_politician_preference

  def initialize(name, politics)
    @voter_name = name
    @voter_politics = politics
    @voter_politician_preference = ""

  end
end

class Politician
  attr_accessor :politician_name, :politician_party

  def initialize(name, party)
    @politician_name = name
    @politician_party = party
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

    index = rand(v_length -1)
    voter = voters(index)

    speech = Speech.new(politician.politician_name, politician.politician_party, voter.voter_name, voter.voter_politics)

    puts "speech giver and givee are:"
    puts "politician: #{politician.politician_name}, #{politician.politician_party}"
    puts "voter: #{voter.voter_name}, #{voter.voter_politics}"
  end

  def update_politician_preference(politician_name, politician_party, voter_name, voter_politics)
    luck_of_draw = rand(6)
    politician_preference = "no_change"

    puts " "
    puts "in update_voter_preference"
    puts "luck_of_draw = #{luck_of_draw}"
    puts "values: #{politician_name}, #{politician_party}, #{voter_name}, #{voter_politics}"

    case politician_party
    when "democrat"
      puts "in when Democrat"

      case voter_politics
      when "tea"
        puts "tea"

        if luck_of_draw == 1 then politician_preference = politician_name
        end
      when "conservative"
        puts "conservative"

        if luck_of_draw == 2 then politician_preference = politician_name
        end
      when "neutral"
        puts "neutral"

        if luck_of_draw == 3 then politician_preference = politician_name
        end
      when "liberal"
        puts "liberal"

        if luck_of_draw == 4 then politician_preference = politician_name
        end
      when "socialist"
        puts "socialist"

        if luck_of_draw == 5 then politician_preference = politician_name
        end
      else no_change
      end
    when "republican"
      puts "in when Republican"

      case voter_politics
      when "socialist"
        puts "socialist"

        if luck_of_draw == 1 then politician_preference = politician_name
        end
      when "liberal"
        puts "liberal"

        if luck_of_draw == 2 then politician_preference = politician_name
        end
      when "neutral"
        puts "neutral"

        if luck_of_draw == 3 then politician_preference = politician_name
        end
      when "conservative"
        puts "conservative"

        if luck_of_draw == 4 then politician_preference = politician_name
        end
      when "tea"
        puts "tea"

        if luck_of_draw == 5 then politician_preference = politician_name
        end
      else missing_voter_politics
      end
    else missing_politician_party
    end

    puts "politician_preference is #{politician_preference}"
    return politician_preference

  end

  def missing_politician_party
    puts "missing politician_party for speech by #{politician_name} to #{voter_name}!"
  end

  def missing_voter_politics
    puts "missing voter_politics for speech by #{politician_name} to #{voter_name}!"
  end
end

def test_voter_sim

  voters = []
  politicians = []
  speeches = []

  print "Voter name? "
  name = gets.chomp
  print "Voter politics? "
  politics = gets.chomp.downcase
  new_voter = Voter.new(name, politics)
  voters << new_voter

  p "#{new_voter.voter_name}, #{new_voter.voter_politics} has been instantiated"
  p "voters is #{voters}"

  print "Politician name? "
  name = gets.chomp
  print "Politician party? "
  party = gets.chomp.downcase
  new_politician = Politician.new(name, party)
  p "#{new_politician.politician_name}, #{new_politician.politician_party} has been instantiated"
  politicians << new_politician
  p "politicians is #{politicians}"

  new_speech = Speech.new(new_politician.politician_name, new_politician.politician_party,
  new_voter.voter_name, new_voter.voter_politics)
  speeches << new_speech
  p "new speech is #{new_speech}"
  p "speeches is #{speeches}"

  voter_politician_preference = new_speech.update_politician_preference(new_speech.politician_name,
  new_speech.politician_party, new_speech.voter_name, new_speech.voter_politics)

  puts "voter_politician_preference is #{voter_politician_preference}"

end

test_voter_sim
