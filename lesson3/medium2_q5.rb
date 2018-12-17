# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end


# VALID_COLORS = %w(blue green).freeze
# def color_valid(color)
#  VALID_COLORS.include?(color)
# end

def color_valid(color)
  color == "blue" || color == "green"
end

p color_valid("purple")
p color_valid("blue")
p color_valid("green")

