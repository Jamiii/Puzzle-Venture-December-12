extends Node2D

var maze_width = 20
var maze_height = 20
var cell_size = 32
var maze = []
var walls = []

# Directions: up, right, down, left
var directions = PackedVector2Array([Vector2(0, -1), Vector2(1, 0), Vector2(0, 1), Vector2(-1, 0)])

func _ready():
	generate_maze()

func generate_maze():
	maze.resize(maze_height)
	for y in range(maze_height):
		maze[y] = []
		for x in range(maze_width):
			maze[y].append(1)  # 1 means wall

	# Start position
	var start = Vector2(1, 1)
	maze[start.y][start.x] = 0  # 0 means path
	carve_path(start)
	draw_maze()

# Recursive Backtracking to carve the maze
func carve_path(pos):
	var dirs = directions.duplicate()

	
	for dir in dirs:
		var new_pos = pos + dir
		if is_valid(new_pos):
			maze[new_pos.y][new_pos.x] = 0
			carve_path(new_pos)

# Check if a cell is within bounds and is a wall
func is_valid(pos):
	return pos.x >= 0 and pos.x < maze_width and pos.y >= 0 and pos.y < maze_height and maze[pos.y][pos.x] == 1

# Draw the maze using TileMap
func draw_maze():
	for y in range(maze_height):
		for x in range(maze_width):
			var cell = maze[y][x]
			if cell == 1:
				draw_rect(Rect2(x * cell_size, y * cell_size, cell_size, cell_size), Color(0.2, 0.2, 0.2)) # Wall color
			else:
				draw_rect(Rect2(x * cell_size, y * cell_size, cell_size, cell_size), Color(1, 1, 1)) # Path color
