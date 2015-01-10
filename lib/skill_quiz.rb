class SkillQuiz
  BASICS = 1
  ADVANCED_BASICS = 2
  BEGINNER = 3
  ADVANCED_BEGINNER = 4

  attr_reader :total

  def initialize(user)
    @name = user[:name]
    @total = 0
  end

  def start_quiz
    time_spent?
    programs_built?
    string?
    integer?
    conditionals?
    arrays?
    hashes?
    loops?
    iteration?
    compound_ds?
    classes?
    regex?
    inheritance?
    metaprogramming?
    file_io?
    singleton?
  end

  def display_status
    case
    when @total > 345
      "Advanced Begininger - #{@total}"
    when @total > 170
      "Beginner - #{@total}"
    when @total > 120
      "Advanced Basics - #{@total}"
    when @total > 80
      "Basics - #{@total}"
    else
      "Complete Noob"
    end
  end

  def multiplier
    { a: 5, b: 10, c: 15, d: 20 }
  end

  def get_input
     gets.chomp.downcase
  end

  def time_spent?
    puts "How much time have you spent programming?"
    puts "A: 0-5hr  B: 5-30hr  C: 30-150hr  D: 150+hrs"
    i = get_input

    @total += multiplier[i.to_sym] * ADVANCED_BEGINNER
  end

  def programs_built?
    puts "How many programs have you built?"
    puts "A: 0-5  B: 5-20  C: 20-50  D: 50+"
    i = get_input

    @total += multiplier[i.to_sym] * ADVANCED_BEGINNER
  end

  def string?
    puts "Do you know what a string is?"
    puts "T/F"
    i = get_input
    @total += multiplier[:a] * BASICS if i == 't'
  end

  def integer?
    puts "Do you know how to create an integer?"
    puts "T/F"
    i = get_input
    @total += multiplier[:a] * BASICS if i == 't'
  end

  def conditionals?
    puts "Which is NOT a conditional in ruby:"
    puts "A: if  B: unless  C: except  D: else"
    i = get_input
    @total += multiplier[:b] * BASICS if i == 'c'
  end

  def arrays?
    puts "Do you know how to target an element in an array?"
    puts "T/F"
    i = get_input
    @total += multiplier[:b] * BASICS if i == 't'
  end

  def hashes?
    puts "Do you know how to target an element in a hash?"
    puts "T/F"
    i = get_input
    @total += multiplier[:b] * BASICS if i == 't'
  end

  def loops?
    puts "Which one is NOT a loop in Ruby?"
    puts "A: loop  B: while  C: until  D: do"
    i = get_input
    @total += multiplier[:b] * ADVANCED_BASICS if i == 'd'
  end

  def iteration?
    puts "Do you know how to iterate with #each?"
    puts "T/F"
    i = get_input
    @total += multiplier[:c] * ADVANCED_BASICS if i == 't'
  end

  def compound_ds?
    puts "Do you know how to use compound data structures?"
    puts "T/F"
    i = get_input
    @total += multiplier[:d] * BEGINNER if i == 't'
  end

  def classes?
    puts "Do you know how to create a class?"
    puts "T/F"
    i = get_input
    @total += multiplier[:c] * BEGINNER if i == 't'
  end

  def regex?
    puts "Do you know how to create a regex?"
    puts "T/F"
    i = get_input
    @total += multiplier[:b] * BEGINNER if i == 't'
  end

  def inheritance?
    puts "Do you know how to use inheritance?"
    puts "T/F"
    i = get_input
    @total += multiplier[:b] * ADVANCED_BEGINNER if i == 't'
  end

  def metaprogramming?
    puts "Do you know how to use metaprogramming?"
    puts "T/F"
    i = get_input
    @total += multiplier[:d] * ADVANCED_BEGINNER if i == 't'
  end

  def file_io?
    puts "Do you know how to use file I/O streams?"
    puts "T/F"
    i = get_input
    @total += multiplier[:b] * ADVANCED_BEGINNER if i == 't'
  end

  def singleton?
    puts "Do you know how to use create singleton classes?"
    puts "T/F"
    i = get_input
    @total += multiplier[:b] * ADVANCED_BEGINNER if i == 't'
  end
end

user = { name: "Spencer" }

quiz = SkillQuiz.new(user)
quiz.start_quiz
puts quiz.display_status
