@@polticians.each do |pol|
  if pol.party = "democrat"
    dem_cand = pol.politician_name
  else
    rep_cand = pol.politician_name
  end
end
@dem_count = 0
@rep_count = 0
@@voters.each do | voter |
  @@politicians.each do | pol |
    pct_array = Array[0, 10, 25, 50, 75, 90]
    @pct = pct_array.at(rand(6) - 1)
    case pol.party
    when "democrat"
      case voter.politics
      when "socialist"
        if @pct == 90
          @dem_count += 1
        else
          @rep_count += 1
        end
      when "liberal"
        if @pct == 75
          @dem_count += 1
        else
          @rep_count += 1
        end
      when "neutral"
        if @pct == 50
          @dem_count += 1
        else
          @rep_count += 1
        end
      when "conservative"
        if @pct == 25
          @dem_count += 1
        else
          @rep_count += 1
        end
      else
        if @pct == 10
          @dem_count += 1
        else
          @rep_count += 1
        end
      end
    when "republican"
      case voter.politics
      when "socialist"
        if @pct == 10
          @dem_count += 1
        else
          @rep_count += 1
        end
      when "liberal"
        if @pct == 25
          @dem_count += 1
        else
          @rep_count += 1
        end
      when "neutral"
        if @pct == 50
          @dem_count += 1
        else
          @rep_count += 1
        end
      when "conservative"
        if @pct == 75
          @dem_count += 1
        else
          @rep_count += 1
        end
      else
        if @pct == 90
          @dem_count += 1
        else
          @rep_count += 1
        end
      end
    end

    puts "dem count = #{dem_count}"
    puts "rep count = #{rep_count}"

    puts "Voting Results:"
    puts "#{@dem_count} votes for the Democrat, #{dem_cand}"
    puts "#{@rep_count} votes for the Republican, #{rep_cand}"
    if @dem_count > @rep_count
      puts "The winner is #{dem_cand}!"
    else
      puts "The winner is #{rep_cand}!"
    end
  end
end
select_option
