require 'gosu'
require_relative 'z_order'
require_relative 'rectangle'
require_relative 'square'

class Window < Gosu::Window
	# draw_line(0, 0, 0, 2, 2, 2, z = 0, mode = :default)
	def initialize
		super 640, 480
		self.caption = "Shapes"
		@background_image = Gosu::Image.new("black.jpg")
		@rectangles = []
		@squares = []
	end

	def needs_cursor?
		true
	end

	def button_down(id)
		if id == Gosu::MsLeft
			true
		end
	end

	def update
		if Gosu::button_down? Gosu::MsLeft then
			@rectangles.push(Rectangle.new(mouse_x, mouse_y))
		end

		if Gosu::button_down? Gosu::MsRight then
			@squares.push(Square.new(mouse_x, mouse_y))
		end
	end

	def draw
		@background_image.draw(0, 0, ZOrder::BACKGROUND)
		@rectangles.each {|rectangle| rectangle.draw}
		@squares.each {|square| square.draw}
	end

	def button_down(id)
		close if id == Gosu::KbEscape
	end

	window = Window.new
	window.show
end