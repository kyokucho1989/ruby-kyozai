class TrafficLight
  attr_accessor :color
  def initialize
    @color = '赤'
  end

  def color_switch
    # @color = @color == '赤 ' ? '青' : '赤' 
    # puts "色変更"
    if @color == '赤'
      @color = '青'
    else
      @color = '赤'
    end
  end
end

class Robo
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def switch_light(traffic_light)
    # @color = @color == '赤 ' ? '青' : '赤' 
    # puts "色変更"

    color = traffic_light.color
    puts "信号機の色は #{color} です"
    # p traffic_light.color
    if color == '赤'
      traffic_light.color = '青'
    else
      traffic_light.color = '赤'
    end
  end
end

light1 = TrafficLight.new

c3po = Robo.new('C-3PO')
c3po.switch_light(light1)
p light1.color