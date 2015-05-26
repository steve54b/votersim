# class Speech
#   attr_accessor :politician_name, :politician_party, :voter_name, :voter_politics
#
#   def initialize(politician_name, politician_party, voter_name, voter_politics)
#     @politician_name = politician_name
#     @politician_party = politician_party
#     @voter_name = voter_name
#     @voter_politics = voter_politics
#   end
#
#   def speeches
#     speeches = []
#     @@politicians.each do |pol|
#       @@voters.each do |voter|
#         new_speech = Speech.new(pol.politician_name, pol.politician_party,
#         voter.voter_name, voter.voter_politics)
#         speeches << new_speech
#       end
#     end
#     until speeches.count == 0
#       current_speech = speeches(rand(speeches.count - 1))
#       voter_current_preference = update_politician_preference(current_speech.politician_name,
#       current_speech.politician_party, current_speech.voter_name, current_speech.voter_politics)
#       if voter_current_preference != "no_change"
#         update_voter(current_speech.voter_name, voter_current_preference)
#       end
#       speeches -= current_speech
#     end
#   end
#
#   # def update_politician_preference(politician_name, politician_party, voter_name, voter_politics)
#   #   luck_of_draw = rand(6)
#   #   politician_preference = "no_change"
#   #
#   #   puts " "
#   #   puts "in update_voter_preference"
#   #   puts "luck_of_draw = #{luck_of_draw}"
#   #   puts "values: #{politician_name}, #{politician_party}, #{voter_name}, #{voter_politics}"
#   #
#   #   case politician_party
#   #   when "democrat"
#   #     puts "in when Democrat"
#   #     case voter_politics
#   #     when "tea"
#   #       puts "tea"
#   #       if luck_of_draw == 1 then politician_preference = politician_name
#   #       end
#   #     when "conservative"
#   #       puts "conservative"
#   #       if luck_of_draw == 2 then politician_preference = politician_name
#   #       end
#   #     when "neutral"
#   #       puts "neutral"
#   #
#   #       if luck_of_draw == 3 then politician_preference = politician_name
#   #       end
#   #     when "liberal"
#   #       puts "liberal"
#   #
#   #       if luck_of_draw == 4 then politician_preference = politician_name
#   #       end
#   #     when "socialist"
#   #       puts "socialist"
#   #
#   #       if luck_of_draw == 5 then politician_preference = politician_name
#   #       end
#   #     else no_change
#   #     end
#   #   when "republican"
#   #     puts "in when Republican"
#   #     case voter_politics
#   #     when "socialist"
#   #       puts "socialist"
#   #       if luck_of_draw == 1 then politician_preference = politician_name
#   #       end
#   #     when "liberal"
#   #       puts "liberal"
#   #       if luck_of_draw == 2 then politician_preference = politician_name
#   #       end
#   #     when "neutral"
#   #       puts "neutral"
#   #       if luck_of_draw == 3 then politician_preference = politician_name
#   #       end
#   #     when "conservative"
#   #       puts "conservative"
#   #       if luck_of_draw == 4 then politician_preference = politician_name
#   #       end
#   #     when "tea"
#   #       puts "tea"
#   #       if luck_of_draw == 5 then politician_preference = politician_name
#   #       end
#   #     else missing_voter_politics
#   #     end
#   #   else missing_politician_party
#   #   end
#   #   puts "politician_preference is #{politician_preference}"
#   #   return politician_preference
#   # end
#   #
#   # def missing_politician_party
#   #   puts "missing politician_party for speech by #{politician_name} to #{voter_name}!"
#   # end
#   #
#   # def missing_voter_politics
#   #   puts "missing voter_politics for speech by #{politician_name} to #{voter_name}!"
#   # end
# end
