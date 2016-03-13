class Jury

  attr_reader :jury_members

  def initialize
    @jury_members = Array.new
  end

  def add_member(member)
    @jury_members << member
  end

  def members
    @jury_members
  end

  def cast_votes(finalists)

  end

end
