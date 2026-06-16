import turtle

# Create a turtle
donatello = turtle.Turtle()
donatello.shape('turtle')
donatello.pensize(5)
donatello.speed(10)

# function to draw a rectanlge
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


# TODO: Draw a space-themed project
  
#Spaceship
rectangle(-1000, -500, 3000, 3000, "black", "black")
rectangle(-50, -150, 100, 300, "black", "silver")
triangle(-100, -240, 200, "silver", "silver")
triangle(-45, 150, 90, "silver", "silver")
rectangle(-50, -300, 100, 100, "silver", "silver")
circle(0, 65, 10, "black", "lightblue")
circle(0, 0, 15, "black", "lightblue")
circle(0, -75, 20, "black", "lightblue")


# Planets
#Sun
circle(-600, 200, 150, "black", "gold")
circle(-600, 225, 125, "yellow", "yellow")
circle(-600, 250, 100, "gold", "gold")
circle(-600, 275, 75, "yellow", "yellow")
circle(-600, 300, 50, "gold", "gold")

#Earth
circle(500, 100, 125, "black", "blue")
rectangle(440, 130, 25, 25, "black", "green")
rectangle(455, 155, 125, 50, "black", "green")
rectangle(500, 125, 15, 30, "black", "green")
rectangle(460, 225, 15, 30, "black", "green")
rectangle(490, 225, 25, 60, "black", "green")
rectangle(515, 220, 25, 60, "black", "green")
rectangle(540, 223, 25, 60, "black", "green")

#Saturn
circle(-400, -300, 125, "black", "navajowhite")

circle(-510, -200, 10, "white", "white")
circle(-290, -200, 10, "white", "white")

circle(-505, -205, 10, "white", "white")
circle(-295, -205, 10, "white", "white")

circle(-500, -210, 10, "white", "white")
circle(-300, -210, 10, "white", "white")

circle(-495, -215, 10, "white", "white")
circle(-305, -215, 10, "white", "white")

circle(-490, -220, 10, "white", "white")
circle(-310, -220, 10, "white", "white")

circle(-480, -225, 10, "white", "white")
circle(-320, -225, 10, "white", "white")

circle(-470, -225, 10, "white", "white")
circle(-330, -225, 10, "white", "white")

circle(-460, -225, 10, "white", "white")
circle(-340, -225, 10, "white", "white")

circle(-450, -225, 10, "white", "white")
circle(-350, -225, 10, "white", "white")

circle(-440, -225, 10, "white", "white")
circle(-360, -225, 10, "white", "white")

circle(-430, -225, 10, "white", "white")
circle(-370, -225, 10, "white", "white")

circle(-420, -225, 10, "white", "white")
circle(-380, -225, 10, "white", "white")

circle(-410, -225, 10, "white", "white")
circle(-390, -225, 10, "white", "white")

circle(-400, -225, 10, "white", "white")
circle(-400, -225, 10, "white", "white")

turtle.done()

# rectangle(x, y, width, height, "line_colour", "fill_colour")
# circle(x, y, radius, "line_colour", "fill_colour")
# triangle(x, y, size, "line_colour", "fill_colour")
# x = left - right    
# y = up - down       
