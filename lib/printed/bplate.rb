require_relative 'params'

class Bplate < SolidRuby::Printed
  def initialize
    @width = 100
    @height = $b_diameter * 0.75
  end

  def part(_show)
    res = cube(x: $trunk_thickness, y: @width, z: @height)
      .fillet(r: $trunk_thickness/7.0, back: [:left, :right]) -
    cube(
      x: $trunk_thickness - ($thickness * 2.0),
      y: @width - ($thickness * 2.0),
      z: @height + 2)
      .fillet(r: $trunk_thickness/7.0, back: [:left, :right])
      .translate(x: $thickness, y: $thickness, z: -1) -
    cube(x: $trunk_thickness - $thickness*2.0, y: $thickness + 2, z: @height + 2)
      .translate(x: $thickness, y: -1, z: -1)

    res.translate(z: -@height + $b_diameter/2.0)

    res -= sphere(d: $b_diameter)
      .translate(z: $b_diameter/2.0 - 0.01)
  end
end
