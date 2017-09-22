class MbbcAssembly < SolidRuby::Assembly

  # Assemblies are used to show how different parts interact on your design.

  # Skip generation of the 'output' method for this assembly.
  # (will still generate 'show')
  skip :output

  def part(show)
    res = Cup.new

    res += Bplate.new

    res += Back.new

    res += Shoulder.new

    res -= cube(x: 120, y: 200, z: 100)
      .center
      .rotate(x: 22.5)
      .translate(x: 50, y: 50, z: -70)

    res -= cube(x: 120, y: 200, z: 100)
      .center
      .rotate(x: -10)
      .translate(x: 80, y: 40, z: -40)
  end
end
