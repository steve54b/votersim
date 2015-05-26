##votersim.rb

class Person
  attr_accessor :voters, :politicians

  def initialize
    @@voters = []
    @@politicians = []
  end

  def select_option
    puts "in select_option"
    option = ""
    until option == "quit"
      print "Please select create, list, update, vote, or quit: "
      option = gets.chomp.downcase
      puts "option is #{option}"
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
        else
          puts "Invalid option selected."
        end
    end
  end

  def create_option
    puts "in create_option"
    puts "CREATE voter or politician:"
    create_option = ""
    until create_option == "quit"
    print "Please select voter or politician (quit for main menu): "
    create_option = gets.chomp
      case create_option
      when "voter"
        new_voter
      when "politician"
        new_politician
      else
        puts "Invalid option selected."
      end
    end
  end

  def list_option
    puts "in list_option"
    puts "List"
    @@politicians.each do |politician|
      puts "* Politician, #{politician.name}, #{politician.party}"
    end
    @@voters.each do |voter|
      puts "* Voter, #{voter.name}, #{voter.politics}"
    end
  end

  def update_option
    puts "in update_option"
    puts "UPDATE voter or politician: "
    update_option = ""
    until update_option == "quit"
      print "Please select voter or politician (quit for main menu): "
      update_option = gets.chomp.downcase
      case update_option
      when "voter"
        update_voter
      when "politician"
        update_politician
      else
        puts "Invalid option selected."
      end
    end
  end

  def vote_option
  end

  def new_voter
    puts "in create_voter"
    puts "Create new_voter:"
    print "Name? "
    name = gets.chomp
    politics = ""
    until politics != ""
      print "politics?  Liberal, Conservative, Tea politics, Socialist, or Neutral: "
      politics_entry = gets.chomp.downcase
      case politics_entry
      when "Liberal"
        politics = politics_entry
      when "Conservative"
        politics = politics_entry
      when "Tea politics"
        politics = politics_entry
      when "Socialist"
        politics = politics_entry
      when "Neutral"
        politics = politics_entry
      else
        puts "Invalid selection:"
      end
    new_voter = Voter.new(name, politics)
    @@voters << new_voter
  end

  def new_politician
    puts "in create_politician"
    puts "Create new_politician:"
    print "Name? "
    name = gets.chomp
    party = ""
    until party != ""
      print "Party?  Democrate or Republican: "
      party_entry = gets.chomp.downcase
      case party_entry
      when "democrat"
        party = party_entry
      when "republican"
        party = party_entry
      else
        puts "Invalid selection:"
      end
    end
    new_politician = Politician.new(name, party)
    @@politician << new_politician
  end

  def update_voter
    puts "in update_voter"
    puts "Update voter:"
    print "Voter name? "
    name = gets.chomp

    voter_found = false
    @@voters.each |voter|
      if voter.name == name
        voter_found = true
        update_voter = voter
      end
    end

    if voter_found == false
      puts "Apologies.  There is no voter with the name #{name}"
    else
      politics = ""
      until politics != ""
        print "politics?  Liberal, Conservative, Tea politics, Socialist, or Neutral: "
        politics_entry = gets.chomp.downcase
        case politics_entry
        when "Liberal"
          politics = politics_entry
        when "Conservative"
          politics = politics_entry
        when "Tea politics"
          politics = politics_entry
        when "Socialist"
          politics = politics_entry
        when "Neutral"
          politics = politics_entry
        else
          puts "Invalid selection:"
        end
      end
      update_voter.politics = politics_entry
    end
  end

  def update_politician
    puts "in update_politician"
    puts "Update politcian:"
    print "Politician name? "
    name = gets.chomp

    politician_found = false
    @@voters.each |politician|
      if politician.name == name
        politician_found = true
        update_politician = politician
      end
      puts "pol-found is #{politician_found}"
    end

    # if politician_found == false
    #   puts "Apologies.  There is no politician with the name #{name}"
    # elsif
    #   print "Politician Party? "
    #   party = gets.chomp.downcase
    #   party_entry = ""
    #   until party_entry != ""
    #     print "Politician Party? "
    #     party = gets.chomp.downcase
    #     case party_entry
    #     when "democrat"
    #       party = party_entry
    #     when "republican"
    #       party = party_entry
    #     else
    #       puts "Invalid selection:"
    #     end
    #   end
    # end

  end

class Voter < Person
  attr_accessor :voter_name, :voter_politics

  def initialize(name, politics)
    @voter_name = name
    @voter_politics = politics
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
  option = ""
  until option == "quit"
    print "Please select create, list, update, vote, or quit: "
    option = gets.chomp.downcase
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
      else
        puts "Invalid option selected."
      end
  end
end



def list_option
  puts "LIST voters and politicians: "
end

def update_option

end

def update_voter
  puts "in update_voter"
  puts "Update voter:"
  print "Voter name? "
  name = gets.chomp
  print "Voter politics? "
  politics = gets.chomp.downcase
  p "#{new_voter.voter_name}, #{new_voter.voter_politics} has been instantiated"
end

def update_politician
  puts "in update_politician"
  puts "Update politician:"
  print "Politician name? "
  name = gets.chomp
  print "Politician party? "
  politics = gets.chomp.downcase
  p "#{new_voter.voter_name}, #{new_voter.voter_politics} has been instantiated"
end

def vote_option
  puts "in vote_option"
end

# def create_voter
#   puts "in create_voter"
#   puts "Create new voter:"
#   print "Name? "
#   name = gets.chomp
#   print "Politics? Liberal, Conservative, Tea Party, Socialist, or Neutral: "
#   politics = gets.chomp.downcase
#   new_voter = Voter.new(name, politics)
#   p "#{new_voter.voter_name}, #{new_voter.voter_politics} has been instantiated"
#   Person.voters
# end

def create_politician
  puts "in create_politician"
  puts "Create new politician:"
  print "Name? "
  name = gets.chomp
  print "Party? Democrat or Republican: "
  party = gets.chomp.downcase
  new_politician = Politician.new(name, party)
  p "#{new_politician.politician_name}, #{new_politician.politician_party} has been instantiated"
  Person.politicians
end

def test_voter_sim
  person = Person.new
  select_option
end

test_voter_sim
