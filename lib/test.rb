# The Main Test Class
class Test
  attr_reader :points

  def initialize
    file = File.new('data/questions.txt', 'r:UTF-8')
    @questions = file.readlines
    file.close

    @points = 0
  end

  # @param [points] question
  def ask
    @questions.each do |question|
      puts question
      @answer = STDIN.gets.to_i
        until @answer.between?(0,2)
          puts "Будьте внимательны, варианты ответов: 0 - «нет», 1 - «иногда», 2 - «да»."
          @answer = STDIN.gets.to_i
        end
      if @answer == 1
        @points += 1
      elsif @answer == 2
        @points += 2
      end
    end
  end
end
