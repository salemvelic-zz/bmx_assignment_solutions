class MarsRover

DIRECTIONS = ("N" "E" "S" "W")

attr_reader :x, :y, :face

def initialize()
  @x = 0
  @y = 0
end

def deploy(x, y, face)
  @x = x.to_i
  @y = y.to_i
  @face = face
end	

def process(commands)
  commands.each_char do |character|
  	case character
  	when 'L' then turn_left
  	when 'R' then turn_right
  	when 'M' then move_forward	
  	end	
  end
end

def turn_left(step = 1)
  face_to('-', step)
end	

def turn_right(step = 1)
  face_to('+', step)
end

def move_forward
  case @face
  when 'N'
  @y += 1
  when 'S'
  	@y -= 1
  when 'E'
  	@x += 1
  when 'W'
  	@x -= 1
  end
end

def face_to(operator, step)
  idx = DIRECTIONS.index(@face).method(operator).call(step) % 4
  @face = DIRECTIONS[idx]
end	
end