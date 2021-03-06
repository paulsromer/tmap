# load data
data(World)

# get current options
str(tmap_options())

# get current style
tmap_style()

# plot map (with default options)
tm_shape(World) + tm_polygons("HPI")

# change style to cobalt
tmap_style("cobalt")

# observe the changed options
tmap_options_diff()

# plot the map again
tm_shape(World) + tm_polygons("HPI")

##############################
# define red style
##############################

# change the background color
tmap_options(bg.color = "red")

# note that the current style is modified
tmap_style()

# observe the changed options
tmap_options_diff()

# save the current options as style "red"
tmap_options_save("red")

# plot the map again
tm_shape(World) + tm_polygons("HPI")

# the specified arguments of tm_layout and tm_view will override the options temporarily:
tm_shape(World) + tm_polygons("HPI") + tm_layout(bg.color="purple")

# when tm_style_ is called, it will override all options temporarily:
tm_shape(World) + tm_polygons("HPI") + tm_layout(bg.color="purple") + tm_style("classic")

# reset all options
tmap_options_reset()

# check style and options
tmap_style()
tmap_options_diff()

##############################
# define black style
##############################

# create style list with style attribute
black_style  <- structure(
    list(
		bg.color = "black",
		aes.color = c(fill = "grey40", borders = "grey40", 
					  symbols = "grey80", dots = "grey80", 
		              lines = "white", text = "white", 
					  na = "grey30", null = "grey15"),
		aes.palette = list(seq = "plasma", div = "PiYG", cat = "Dark2"),
		attr.color = "white",
		panel.label.color = "white",
		panel.label.bg.color = "grey40",
		main.title.color = "white"
	),
	style = "black"
)

# assign the style
tmap_options(black_style)

# observe that "black" is a new style
tmap_style()

# plot the world map again, this time with the newly created black style
tm_shape(World) +
	tm_polygons("HPI")

# reset all options
tmap_options_reset()
