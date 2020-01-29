function sierpinski(cx,cy,b)

hold on

if b<1
    return
end

plot([cx-b/2,cx+b/2],[cy-b/2,cy-b/2])
plot([cx-b/2,cx+b/2],[cy+b/2,cy+b/2])
plot([cx-b/2,cx-b/2],[cy-b/2,cy+b/2])
plot([cx+b/2,cx+b/2],[cy-b/2,cy+b/2])

sierpinski(cx-b/3,cy-b/3,b/3)
sierpinski(cx-b/3,cy,b/3)
sierpinski(cx-b/3,cy+b/3,b/3)
sierpinski(cx,cy+b/3,b/3)
sierpinski(cx+b/3,cy+b/3,b/3)
sierpinski(cx+b/3,cy,b/3)
sierpinski(cx+b/3,cy-b/3,b/3)
sierpinski(cx,cy-b/3,b/3)

end