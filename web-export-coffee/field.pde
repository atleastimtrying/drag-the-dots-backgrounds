x = 0
y = 1440
d = 180
offset = 0
hue = 216
setup = ->
  size(1440, 900)
  background(255)
  colorMode(HSB, 360, 100, 100)
  noStroke()
  smooth()
draw = ->
  fill(hue, 60, random(80)+20 )
  ellipse(x + offset,y,d,d)
  x += d
  if x > width - offset
    y -= d/2
    x = 0
    if offset is - d/2
      offset = 0
    else
      offset = - d/2
