from turtle import *

def draw(img_data):
  speed(0)

  penup()

  for x in range(len(img_data)):
    goto(-180,len(img_data) * 10 - x * 20)
    write(img_data[x], align='center', font=("Arial", 12, "normal"))
    goto(-40,len(img_data) * 5 - (x - 1) * 10)
    for pixel in img_data[x]:
      if pixel == '0':
        begin_fill()
        square()
        end_fill()
      else:
        square()

      forward(10)

  penup()
  goto(-1000,-1000)

def square():
  pendown()
  for x in range(4):
    forward(10)
    right(90)
  penup()