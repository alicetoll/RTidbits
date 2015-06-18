# Shade regions under a curve

x <- -300:300*0.01
null <- dnorm(x, 0, 1)

curve(dnorm(x, 0.315, 0.5), xlim = c(-3, 3), ylab = "")
polygon(c(0.25, seq(0.25, 0.38, 0.01), 0.38), 
        c(0, dnorm(seq(0.25, 0.38, 0.01), 0.315, 0.5), 0), col = 2)
lines(x, null, type = 'l')
polygon(c(1.96, seq(1.96, 3, 0.01), 3), 
        c(0, dnorm(seq(1.96, 3, 0.01)), 0), col = 4)
polygon(c(-3, seq(-3, -1.96, 0.01), -1.96), 
        c(0, dnorm(seq(-3, -1.96, 0.01)), 0), col = 4)
legend("topright", 
       c("Hypothesis Testing\nRejection Region", 
         "Significance Testing\nRejection Region"), 
       col = c(2,4), pch = 15, cex = 0.8, inset = .04, y.intersp = 2)