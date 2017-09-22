require_relative 'params'

class Back < SolidRuby::Printed
  def initialize
  end

  def part(_show)
    res = cube(x: $thickness, y: $back_width, z: $back_height)
      .center_y

    res += cube(x: $thickness, y: $back_width*1.0, z: $back_width/2.0)
      .rotate(x: -45)
      .translate(z: $back_height/2.5)

    res.translate(x: $trunk_thickness - $thickness)
  end
end
