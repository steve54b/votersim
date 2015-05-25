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

  def speeches
    speeches = []
    politicians.each do |pol|
      voters.each do |voter|
        new_speech = Speech.new(pol.politician_name, pol.politician_party,
        voter.voter_name, voter.voter_politics)
        speeches << new_speech
      end
    end

    until speeches.count == 0
      current_speech = speeches(rand(speeches.count))
      voter_current_preference = update_politician_preference(current_speech.politician_name,
      current_speech.politician_party, current_speech.voter_name, current_speech.voter_politics)
      unless voter_current_preference == "no_change"
        update_voter(current_speech.voter_name, voter_current_preference)
      end
      speeches -= current_speech
    end
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

def select_option
  option = ""
  until option == "quit"
    print "Please select create, list, update, vote, or quit: "
    option = gets.chomp
    case option
    when "create"
      create_option
    when "list"
      list_option
    when "update"
      update_option
    when "vote"
      vote_option
    when "quit"
      puts "Thank you.  Exiting program"
    else puts "Invalid option selected."
    end
  end
end

def create_option
  puts "In create_option"
  # create_option = ""
  # print "Thank you.  Please select voter or politician: "
  # create_option = gets.chomp
  #   case create_option
  #   when "voter"
  #     puts "create_voter"
  #   when "politician"
  #     puts "create_politician"
  #   else
  #     puts "Your selection is not valid."
  #   end
end

def list_option
  puts "In list_option"
end

def update_option
  puts "In update_option"
end

def vote_option
  puts "In vote_option"
end

def test_voter_sim
  voters = []
  politicians = []
  select_option
end

test_voter_sim


# print "Voter name? "
# name = gets.chomp
# print "Voter politics? "
# politics = gets.chomp.downcase
# new_voter = Voter.new(name, politics)
# voters << new_voter
#
# p "#{new_voter.voter_name}, #{new_voter.voter_politics} has been instantiated"
# p "voters is #{voters}"
#
# print "Politician name? "
# name = gets.chomp
# print "Politician party? "
# party = gets.chomp.downcase
# new_politician = Politician.new(name, party)
# p "#{new_politician.politician_name}, #{new_politician.politician_party} has been instantiated"
# politicians << new_politician
# p "politicians is #{politicians}"
#
# new_speech = Speech.new(new_politician.politician_name, new_politician.politician_party,
# new_voter.voter_name, new_voter.voter_politics)
# speeches << new_speech
# p "new speech is #{new_speech}"
# p "speeches is #{speeches}"
#
# voter_politician_preference = new_speech.update_politician_preference(new_speech.politician_name,
# new_speech.politician_party, new_speech.voter_name, new_speech.voter_politics)
#
# puts "voter_politician_preference is #{voter_politician_preference}"
