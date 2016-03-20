require_relative "game"
require_relative "tribe"
require_relative "contestant"
require_relative "jury"
require "colorizr"

#After your tests pass, uncomment this code below
#=========================================================
# # Create an array of twenty hopefuls to compete on the island of Borneo
 @contestants = %w(carlos walter aparna trinh diego juliana poornima juha sofia julia fernando dena orit colt zhalisa farrin muhammed ari rasha gauri)
 @contestants.map!{ |contestant| Contestant.new(contestant) }.shuffle!
#
# # Create two new tribes with names
 @coyopa = Tribe.new(name: "Pagong", members: @contestants.shift(10))
 @hunapu = Tribe.new(name: "Tagi", members: @contestants.shift(10))
#
# # Create a new game of Survivor
 @borneo = Game.new(@coyopa, @hunapu)
#=========================================================



#This is where you will write your code for the three phases
def phase_one
   puts "Phase one"
   challenge_number = 8
   eliminated = Array.new
   index = 0
   challenge_number.times do
     if @borneo.immunity_challenge == @borneo.tribes[0]
       index = 1
       immune = @borneo.individual_immunity_challenge
       walking_dead = @borneo.tribes[index].tribal_council(immune:immune)
       eliminated.push walking_dead
       @borneo.tribes[index].members.delete(walking_dead)
     else
       immune = @borneo.individual_immunity_challenge
       walking_dead = @borneo.tribes[index].tribal_council(immune:immune)
       eliminated.push walking_dead
       @borneo.tribes[index].members.delete(walking_dead)
     end
     puts "the loosing team is #{@borneo.tribes[index].name} and #{walking_dead} becomes a walking dead"
   end
 eliminated.length
end

def phase_two
  puts "Phase two"
  challenge_number = 3
  eliminated = []
  challenge_number.times do
      immune = @borneo.individual_immunity_challenge
      walking_dead = @merge_tribe.tribal_council(immune:immune)
      eliminated.push walking_dead
      @merge_tribe.members.delete(walking_dead)
      puts "#{walking_dead} becomes a walking dead"
  end
  eliminated.length
end

def phase_three
 challenge_number = 7
 challenge_number.times do
   immune = @borneo.individual_immunity_challenge
   @jury.add_member @merge_tribe.tribal_council(immune:survivor)
   puts "#{survivor.to_s} won the individual immunity challenge and is safe from elimination."
 end
end


# If all the tests pass, the code below should run the entire simulation!!
#=========================================================
# phase_one #8 eliminations
# @merge_tribe = @borneo.merge("Cello") # After 8 eliminations, merge the two tribes together
# phase_two #3 more eliminations
# @jury = Jury.new
# phase_three #7 elminiations become jury members
# finalists = @merge_tribe.members #set finalists
# vote_results = @jury.cast_votes(finalists) #Jury members report votes
# @jury.report_votes(vote_results) #Jury announces their votes
# @jury.announce_winner(vote_results) #Jury announces final winner
