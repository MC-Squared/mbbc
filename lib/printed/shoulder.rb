require_relative 'params'

class Shoulder < SolidRuby::Printed
  def initialize
  end

  def part(_show)
    res = cube(x: $trunk_thickness, y: $back_width, z: 50)
      .fillet(r: $trunk_thickness/8.0, top: [:left, :right])

    res -= cube(x: $trunk_thickness - ($thickness*2.0), y: $back_width + 2, z: 50)
      .fillet(r: $trunk_thickness/2.0, top: [:left, :right])
      .translate(x: $thickness, y: -1, z: -$thickness)

    res.translate(y: -$back_width/2.0, z: $back_height)
  end
end
