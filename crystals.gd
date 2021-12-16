extends TextureButton

export (Array, Texture) var sprites = []
var texture_index = 0
var index_highbound = 3
var index_lowbound = 0

func swap_out_texture():
	var new_texture = sprites[texture_index]
	texture_normal = new_texture

func _gui_input(event):
	# Check for mouse click
	if event is InputEventMouseButton and event.pressed:
		# Right mouse click?
		if texture_index > index_lowbound and event.button_index == BUTTON_RIGHT:
			texture_index = texture_index - 1
		# Left mouse click?
		if texture_index < index_highbound and event.button_index == BUTTON_LEFT:
			texture_index = texture_index + 1

	  # Swap out texture
		swap_out_texture()

func _ready():
	swap_out_texture()
