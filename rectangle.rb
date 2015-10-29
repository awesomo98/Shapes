require_relative 'z_order'

class Rectangle
	attr_reader :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	Y_DISTANCE = 30

	def draw
		Gosu.draw_line(@x, @y, 0xff_d94214, @x + 26, @y, 0xff_d94214, ZOrder::SHAPE)
		Gosu.draw_line(@x, @y, 0xff_d94214, @x, @y - 30, 0xff_d94214, ZOrder::SHAPE)
		Gosu.draw_line(@x, @y - 30, 0xff_d94214, @x + 26, @y - 30, 0xff_d94214, ZOrder::SHAPE)
		Gosu.draw_line(@x + 26, @y - 30, 0xff_d94214, @x + 26, @y, 0xff_d94214, ZOrder::SHAPE)

		Gosu.draw_line(@x + 1, @y - Y_DISTANCE, 0xff_5CB85C, @x + 1, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 2, @y - Y_DISTANCE, 0xff_5CB85C, @x + 2, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 3, @y - Y_DISTANCE, 0xff_5CB85C, @x + 3, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 4, @y - Y_DISTANCE, 0xff_5CB85C, @x + 4, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 5, @y - Y_DISTANCE, 0xff_5CB85C, @x + 5, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 6, @y - Y_DISTANCE, 0xff_5CB85C, @x + 6, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 7, @y - Y_DISTANCE, 0xff_5CB85C, @x + 7, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 8, @y - Y_DISTANCE, 0xff_5CB85C, @x + 8, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 9, @y - Y_DISTANCE, 0xff_5CB85C, @x + 9, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 10, @y - Y_DISTANCE, 0xff_5CB85C, @x + 10, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 11, @y - Y_DISTANCE, 0xff_5CB85C, @x + 11, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 12, @y - Y_DISTANCE, 0xff_5CB85C, @x + 12, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 13, @y - Y_DISTANCE, 0xff_5CB85C, @x + 13, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 14, @y - Y_DISTANCE, 0xff_5CB85C, @x + 14, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 15, @y - Y_DISTANCE, 0xff_5CB85C, @x + 15, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 16, @y - Y_DISTANCE, 0xff_5CB85C, @x + 16, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 17, @y - Y_DISTANCE, 0xff_5CB85C, @x + 17, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 18, @y - Y_DISTANCE, 0xff_5CB85C, @x + 18, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 19, @y - Y_DISTANCE, 0xff_5CB85C, @x + 19, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 20, @y - Y_DISTANCE, 0xff_5CB85C, @x + 20, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 21, @y - Y_DISTANCE, 0xff_5CB85C, @x + 21, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 22, @y - Y_DISTANCE, 0xff_5CB85C, @x + 22, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 22, @y - Y_DISTANCE, 0xff_5CB85C, @x + 22, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 23, @y - Y_DISTANCE, 0xff_5CB85C, @x + 23, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 24, @y - Y_DISTANCE, 0xff_5CB85C, @x + 24, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
		Gosu.draw_line(@x + 25, @y - Y_DISTANCE, 0xff_5CB85C, @x + 25, @y - 1, 0xff_5CB85C, ZOrder::SHAPE)
	end

	
end