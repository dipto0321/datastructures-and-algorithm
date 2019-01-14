

path = [[0, 0]]
grid = [[0, 0, 0, 0, 0],
        [0, 1, 0, 1, 0],
        [0, 1, 0, 1, 1],
        [0, 1, 0, 0, 0],
        [0, 0, 0, 1, 9]]


def maze_search(x, y):
    if grid[x][y] == 9:
        path.append([x, y])
        return True
    elif grid[x][y] == 1:
        # path.pop()
        return False
    elif grid[x][y] == 'v':
        return False

    if [x, y] not in path:
        path.append([x, y])
    # mark as visited
    grid[x][y] = 'v'

    # explore neighbors clockwise starting by the one on the right
    if ((x < len(grid) - 1 and maze_search(x + 1, y))
            or (x > 0 and maze_search(x - 1, y))
            or (y < len(grid) - 1 and maze_search(x, y + 1))
            or (y > 0 and maze_search(x, y - 1))):
        return True

    return False


maze_search(0, 0)
print(path)
