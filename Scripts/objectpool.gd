extends Node

export var g_copies_of_each: int = 2
export var g_path: String = ""


func _ready():
	pass 
	
	var paths: Array = _get_full_paths(g_path)
	print('paths =', paths)
	
	
func _process(delta):
	pass

func _get_full_paths(path: String) -> Array:
	if path.ends_with('.tscn'):
		return[path]
		
	var files = _list_files_in_directory(path)
	var paths = []
	for file in files:
		paths.append(path + file)
		return paths

func _list_files_directory(path: String) -> Array:
	var files: Array = []
	var dir := Directory.new()
	
	dir.open(path)
	
	while true:
		var file: String = dir.get_next()
		if file == "":
			break
		elif not file.begins_with("."):
			files.append(file)
				
	dir.list_dir_end()
				
	
	return files 
