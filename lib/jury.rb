class Jury
  attr_accessor :members

  def initialize
    @members = []
    @finalists = {}
  end

  def members
    @members
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)

    finalists.each do |finalist|
      @finalists[finalist] = 0
    end

    @members.each do |member|
      puts "#{member.name} has voted for #{finalists.sample}"
      @finalists[finalists.sample] += 1
    end

    return @finalists
  end

  def report_votes(final_votes)
    final_votes.each do |finalist, score|
      puts "#{finalist} : #{score}"
    end
  end

  def announce_winner(final_votes)
    winner = final_votes.values.sort.first
    puts winner

  end



end
