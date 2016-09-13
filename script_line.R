a <- 2 
b <- 7
sigSg <- 0.5
n <- 400

x <- runif(n)
y <- a + b*x  + rnorm(n, sd = sqrt(sigSg))
(avgX <- mean(x))

write(avgX, file="avgX.txt")

plot(x,y)
abline(a,b,col='hotpink', lwd = 2)
dev.print(pdf, "toy-line.pdf")

