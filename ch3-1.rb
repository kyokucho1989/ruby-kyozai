class Robo
  def initialize(name)
    @name = name
    puts "新規製造！"
  end

  def hello
    puts "コンニチハ! #{@name}デス！"
  end
end

robo1 = Robo.new('Alice')

robo1.hello