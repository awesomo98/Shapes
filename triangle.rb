require_relative 'z_order'


class Triangle
	STROKE_COLOR = 0xff_FF00FF
	FILL_COLOR = 0xff_781027

	attr_reader :x, :y, :z

	def initialize(x, y, z)
		@x = x
		@y = y
		@z = z
	end

	def draw
		for i in 0..z do 
			Gosu.draw_line(@x-i/2, @y+ i, FILL_COLOR, @x + i/2, @y + i, FILL_COLOR, ZOrder::SHAPE)
		end
		Gosu.draw_line(@x, @y, STROKE_COLOR, @x + @z/2, @y + @z, STROKE_COLOR, ZOrder::SHAPE)
		Gosu.draw_line(@x, @y, STROKE_COLOR, @x - @z/2, @y + @z, STROKE_COLOR, ZOrder::SHAPE)
		Gosu.draw_line(@x, @y, STROKE_COLOR, @x, @y + 50, STROKE_COLOR, ZOrder::SHAPE)
	end
end