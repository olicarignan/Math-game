class Player

  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def random_number 
    rand(20) + 1
  end

  def question
    @number_one = random_number
    @number_two = random_number
    puts "#{@name}: What does #{@number_one} plus #{@number_two} equal?"
    @answer = gets.chomp
    if Integer(@answer) == @number_one + @number_two
      puts "Good job"
    else
      puts "Nope"
      @lives -= 1
    end
  end

end

