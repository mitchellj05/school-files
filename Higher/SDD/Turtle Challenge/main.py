import turtle

# Create a turtle
donatello = turtle.Turtle()
donatello.shape('turtle')
donatello.pensize(5)
donatello.speed(5)

# function to draw a rectangle
def rectangle(x, y, width, height, line_colour, fill_colour):
  # Move turtle
  donatello.penup()
  donatello.goto(x,y)
  donatello.pendown()

  # Set colours
  donatello.color(line_colour, fill_colour)

  donatello.begin_fill()

  # DONE: Code for rectangle
  donatello.forward(width)
  donatello.left(90)
  donatello.forward(height)
  donatello.left(90)
  donatello.forward(width)
  donatello.left(90)
  donatello.forward(height)
  donatello.left(90)

  donatello.end_fill()


# function to draw a circle
def circle(x, y, radius, line_colour, fill_colour):
  # Move turtle
  donatello.penup()
  donatello.goto(x,y)
  donatello.pendown()

  # Set colours
  donatello.color(line_colour, fill_colour)

  donatello.begin_fill()

  # DONE: Code for circle
  donatello.circle(radius)

  donatello.end_fill()

  
# function to draw a triangle
def triangle(x, y, size, line_colour, fill_colour):
  # Move turtle
  donatello.penup()
  donatello.goto(x,y)
  donatello.pendown()

  # Set colours
  donatello.color(line_colour, fill_colour)

  donatello.begin_fill()

  # DONE: Code for triangle
  donatello.forward(size)
  donatello.left(120)
  donatello.forward(size)
  donatello.left(120)
  donatello.forward(size)
  donatello.left(120)

  
  donatello.end_fill()



# TODO: Draw a teacher
rectangle(-100, -100, 200, 200, "black", "white")


turtle.done()
