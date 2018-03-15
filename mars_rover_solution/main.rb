require_relative './rover.rb'

plateau = ARGF.gets
coord = plateau.split[0, 2]

$x_coord = coord[0]
$y_coord = coord[1]

while true

  rover_position = ARGF.gets
  position = rover_position.split[0, 2]
  face = rover_position.split[2]
  
  rover = MarsRover.new()
  rover.deploy(position[0], position[1], face)

  commands = ARGF.gets
  rover.process(commands)
  
  puts [rover.x, rover.y, rover.face].join(" ")
end

