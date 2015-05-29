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
        create_voter
      when "politician"
        create_politician
      when "quit"
        select_option
      else
        puts "Invalid option selected."
      end
    end
  end

  def list_option
    puts "in list_option"
    puts "List"
    @@politicians.each do |politician|
      puts "* Politician, #{politician.politician_name}, #{politician.party}"
    end
    @@voters.each do |voter|
      puts "* Voter, #{voter.voter_name }, #{voter.politics}"
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
      when "quit"
        select_option
      else
        puts "Invalid option selected."
      end
    end
  end
  def create_voter
    puts "in create_voter"
    puts "Create new_voter:"
    print "Name? "
    name = gets.chomp
    politics = ""
    until politics != ""
      print "Politics?  Liberal, Conservative, Tea party, Socialist, or Neutral: "
      politics_entry = gets.chomp.downcase
      case politics_entry
      when "liberal", "conservative", "tea party", "socialist", "neutral"
        politics = politics_entry
        new_voter = Voter.new(name, politics)
        @@voters << new_voter
        p "instantiated voter #{new_voter.voter_name} as a #{new_voter.politics}"
        p "voters array now: #{@@voters}"
      else
        puts "Invalid selection:"
      end
    end
  end
  def update_voter
    puts "in update_voter"
    puts "Update voter:"
    print "Voter name? "
    name = gets.chomp
    politics == ""
    until politics != ""
      print "Politics?  Liberal, Conservative, Tea politics, Socialist, or Neutral: "
      politics_entry = gets.chomp.downcase
      case politics_entry
      when "liberal", "conservative", "tea party", "socialist", "neutral"
        politics = politics_entry
      else
        puts "Invalid selection:"
      end
    end
    @found = false
    @@voters.each |voter|
      if voter.voter_name == name
        @found = true
        update_voter = voter
        update_voter.politics = politics
      end
    end
    if !@found then
      puts "no match found"
    end
  end

  def create_politician
    puts "in create_politician"
    puts "Create new_politician:"
    print "Name? "
    name = gets.chomp
    party = ""
    until party != ""
      print "Party?  Democrate or Republican: "
      party_entry = gets.chomp.downcase
      case party_entry
      when "democrat", "republican"
        party = party_entry
      else
        puts "Invalid selection:"
      end
    end
    new_politician = Politician.new(name, party)
    @@politicians << new_politician
    p "instantiated politician #{new_politician.politician_name} as a #{new_politician.party}"
    p "politicians array now: #{@@politicians}"
  end

  def update_politician
    puts "in update_politician"
  end

end

class Voter < Person
  attr_accessor :voter_name, :politics

  def initialize(name, politics)
    @voter_name = name
    @politics = politics
  end
end

class Politician < Person
attr_accessor :politician_name, :party

  def initialize(name, party)
    @politician_name = name
    @party = party
  end
end

def test_voter_sim
  person = Person.new
  person.select_option
end

test_voter_sim
