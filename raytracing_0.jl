using Images

imwidth = 800
imheight = 600

image = Images.RGB.(zeros(imheight, imwidth))

for j in 1:imheight
    for i in 1:imwidth
        r = (i - 1) / (imwidth - 1)
        g = 1.0 - (j - 1) / (imheight - 1)
        b = 0.25

        image[j, i] = Images.RGB(r, g, b)
    end
end

if isfile("raytracing.png")
    rm("raytracing.png")
end
save("raytracing.png", image)