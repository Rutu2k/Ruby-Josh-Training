class Hangman
  def initialize
    @letters = ('a'..'z').to_a
    word = ["cricket","bottle","phone","mouse","battery","book"]
    @word = word.sample.split('').to_a
    p @word
  end
  def start_game
    puts "Hey There lets see how well you can play.."
    @i = 0
    @arr =[]
    #p  @word.length
    while @i <= @word.length do
      @arr[@i] = "_"
      @i += 1
    end
    @arr.each {|i| print "#{i} "}
    print "\n\n"
    puts "Enter your guess"
    @guess = gets.chomp

    @word.each do |i|
        if @guess == i 
          puts "hey great job!"
          @arr[@word.index(i)] = @guess
          p @arr
        end
        rescue
          puts "Try Again!"
          break
        end
    end
  
  
end

h1 = Hangman.new()
h1.start_game


