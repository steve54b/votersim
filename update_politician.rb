def vote_option
  puts "in vote_option"
end


def update_politician
  puts "in update_politician"
  puts "Update politician:"
  print "Politician name? "
  name = gets.chomp
  party = ""
  until party_entry != ""
    party_entry = gets.chomp.downcase
    print "Politician Party? "
    party = gets.chomp.downcase
    case party_entry
    when "democrat", "republican"
      party = party_entry
    else
      puts "Invalid selection:"
    end
  end
  @found = false
  @@voters.each |politician|
    if politician.politician_name == name
      @found = true
      update_politician = politician
      update_voter.party = party
    end
  end
  if !@found
    puts "Politician #{name} not found"
  end
end
