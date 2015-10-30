require 'gosu'
require_relative 'z_order'
require_relative 'rectangle'
require_relative 'square'
require_relative 'triangle'
require_relative 'arrow'

class Window < Gosu::Window
	def initialize
		super 640, 480
		@window_height = 640
		@window_width = 480
		self.caption = "Shapes"
		@background_image = Gosu::Image.new("black.jpg")
		@rectangles = []
		@squares = []
		@triangles = []
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

		if Gosu::button_down? Gosu::KbSpace then
			@squares.push(Square.new(mouse_x, mouse_y))
		end

		if Gosu::button_down? Gosu::MsRight then
			@triangles.push(Triangle.new(mouse_x, mouse_y, @window_width / 10))
		end

		if Gosu::button_down? Gosu::MsMiddle then
			@arrows.push(Arrow.new(mouse_x, mouse_y, @window_width / 10))
		end

	end

	def draw
		@background_image.draw(0, 0, ZOrder::BACKGROUND)
		@rectangles.each {|rectangle| rectangle.draw}
		@squares.each {|square| square.draw}
		@triangles.each {|triangle| triangle.draw}
	end

	def button_down(id)
		close if id == Gosu::KbEscape
	end

	class Arrow
		

		def draw
			@rectangles.push(Rectangle.new(mouse_x, mouse_y))
			@triangles.push(Triangle.new())
		end
	end

	window = Window.new
	window.show
end