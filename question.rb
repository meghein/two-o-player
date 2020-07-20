class Question
  attr_accessor :num1, :num2

  def self.num1
    @num1 = rand(10)
  end

  def self.num2
    @num2 = rand(10)
  end

  def self.validate(input)
    input == (@num1 + @num2)
  end
end