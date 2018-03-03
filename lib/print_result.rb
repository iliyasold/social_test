# Class For Print Results
class PrintResults
  def initialize
    file = File.new('data/answers.txt', 'r:UTF-8')
    @answers = file.readlines
    file.close
  end

  def print_result(test)
    puts "Результат теста:"
    if test.points.between?(30,32)
      puts @answers[0]
    elsif test.points.between?(25,29)
      puts @answers[1]
    elsif test.points.between?(19,24)
      puts @answers[2]
    elsif test.points.between?(14,18)
      puts @answers[3]
    elsif test.points.between?(9,13)
      puts @answers[4]
    elsif test.points.between?(4,8)
      puts @answers[5]
    else
      puts @answers[6]
    end
  end
end
