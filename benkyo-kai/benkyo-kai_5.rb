class Robo
  def initialize(name)
    # puts "新規製造！"
    puts "新規製造！ 名前：#{name}"

  end

  def hello
    puts "コンニチハ!"
  end
end

# robo1 = Robo.new
robo1 = Robo.new('Mike')
robo1.hello