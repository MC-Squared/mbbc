require_relative 'params'

class Cup < SolidRuby::Printed
  def initialize
  end

  def part(_show)
    res = sphere(d: $b_diameter)

    res -= sphere(d: $b_diameter - ($thickness*2.0))

    res -= cube($b_diameter + 2)
      .center_xy
      .rotate(y: -22.5)

    res -= cube($b_diameter + 2)
      .center_y
      .center_z

    res.translate(z: $b_diameter/2.0)
  end
end
