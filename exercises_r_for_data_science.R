#SampurnaM, 21-7-24, 11.23 pm
library(tidyverse)
install.packages("palmerpenguins")
install.packages("ggthemes")
library(palmerpenguins)
library(ggthemes)
penguins
View(penguins)
### now creating plots
ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g))
#adding points to the plot
ggplot(data = penguins,
       mapping =  aes(x = flipper_length_mm, y = body_mass_g, color = species))+geom_point()
#adding a curve to the scatterplot, linear model used for smooth curve
ggplot(data = penguins,
       mapping =  aes(x = flipper_length_mm, y = body_mass_g, color = species))+geom_point()+geom_smooth(method = "lm")
## defining local mapping for species colour to get one line instead of three
ggplot(data=penguins,
       mapping =  aes(x = flipper_length_mm, y = body_mass_g))+ geom_point(mapping = aes(colour = species))+ geom_smooth(method = "lm")
#now adding different shapes to different species
ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g))+geom_point(mapping = aes(colour = species, shape = species))+geom_smooth(method ="lm")
#adding label parameters
ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g))+geom_point(mapping = aes(colour = species, shape = species))+geom_smooth(method ="lm")+labs(
       title = "Body mass and flipper length",
       subtitle = "Dimensions for Adelie , Chinstrap and Gentoo Penguins",
       x = "Flipper length(mm)", y = "Body mass (g)",
       color = "Species", shape = "Species"
       )+ scale_color_colorblind()