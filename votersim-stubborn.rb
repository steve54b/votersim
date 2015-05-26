### VOTERSIM.RB

#### need assistance:
####    adding voters and politicians to respective arrays
####    accessing speeches method from option menu

class Person
  attr_accessor :voters, :politicians

  def initialize
    @@voters = []
    @@politicians = []
  end

end

class Voter < Person
  attr_accessor :voter_name, :voter_politics, :voter_politician_preference

  def initialize(name, politics)
    @voter_name = name
    @voter_politics = politics
    @voter_politician_preference = ""
    @@voters << self
  end

end

class Politician < Person
  attr_accessor :politician_name, :politician_party

  def initialize(name, party)
    @politician_name = name
    @politician_party = party
    @@politicians << self
  end

end


def select_option
  puts "in select_option"
  # option = ""
  # until option == "quit"
  #   print "Please select create, list, update, vote, or quit: "
  #   option = gets.chomp.downcase
  #     case option
  #     when "create"
  #       create_option
  #     when "list"
  #       list_option
  #     when "update"
  #       update_option
  #     when "vote"
  #       vote_option
  #     when "quit"
  #       puts "Thank you.  Exiting program"
  #     else
  #       puts "Invalid option selected."
  #     end
  # end
  # p "voters are #{@@voters}"
  # p "politicians are #{@@politicians}"
end

def create_option
  puts "in create_option"
  # puts "CREATE voter or politician:"
  # create_option = ""
  # until create_option == "quit"
  # print "Please select voter or politician (quit for main menu): "
  # create_option = gets.chomp
  #   case create_option
  #   when "voter"
  #     create_voter
  #   when "politician"
  #     create_politician
  #   else
  #     puts "Invalid option selected."
  #   end
  # end
end

def list_option
  puts "LIST voters and politicians: "
end

def update_option
  puts "in update_option"
  # puts "UPDATE voter or politician: "
  # update_option = ""
  # until update_option == "quit"
  # print "Please select voter or politician (quit for main menu): "
  # update_option = gets.chomp
  # case update_option
  # when "voter"
  #   update_voter
  # when "politician"
  #   update_politician
  # else
  #   puts "Invalid option selected."
  # end
end

def update_voter
  puts "in update_voter"
  # puts "Update voter:"
  # print "Voter name? "
  # name = gets.chomp
  # print "Voter politics? "
  # politics = gets.chomp.downcase
  # p "SKIPPING -voters << new_voters-"
  # p "#{new_voter.voter_name}, #{new_voter.voter_politics} has been instantiated"
end

def update_politician
  puts "in update_politician"
end

def vote_option
  puts "in vote_option"
end

def create_voter
  puts "in create_voter"
#   puts "Create new voter:"
#   print "Name? "
#   name = gets.chomp
#   print "Politics? Liberal, Conservative, Tea Party, Socialist, or Neutral: "
#   politics = gets.chomp.downcase
#   new_voter = Voter.new(name, politics)
#   p "SKIPPING -voters << new_voters-"
#   p "#{new_voter.voter_name}, #{new_voter.voter_politics} has been instantiated"
# end

def create_politician
  puts "in create_politician"
  # puts "Create new politician:"
  # print "Name? "
  # name = gets.chomp
  # print "Party? Democrat or Republican: "
  # party = gets.chomp.downcase
  # new_politician = Politician.new(name, party)
  # p "SKIPPING -politicians << new_politician-"
  # p "#{new_politician.politician_name}, #{new_politician.politician_party} has been instantiated"
  # p "p politicians array"
end

def test_voter_sim
  select_option
end

test_voter_sim
