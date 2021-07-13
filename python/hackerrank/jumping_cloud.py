# There is a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. The player can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus or . The player must avoid the thunderheads. Determine the minimum number of jumps it will take to jump from the starting postion to the last cloud. It is always possible to win the game.

# For each game, you will get an array of clouds numbered if they are safe or if they must be avoided.

# Example
# c = [0,1,0,0,0,1,0]
# Index the array from . The number on each cloud is its index in the list so the player must avoid the clouds at indices and . They could follow these two paths: or . The first path takes  jumps while the second takes . Return .

# Function Description

# Complete the jumpingOnClouds function in the editor below.

# jumpingOnClouds has the following parameter(s):

# int c[n]: an array of binary integers
# Returns

# int: the minimum number of jumps required
# Input Format

# The first line contains an integer, the total number of clouds. The second line contains  space-separated binary integers describing clouds  where .

# Constraints

# Output Format

# Print the minimum number of jumps needed to win the game.

def jumpingOnClouds(c):
    count = 0
    i = 0
    while i < len(c) - 1:
        if i < len(c) - 2 and c[i + 2] == 0:
            i += 2
        else:
            i += 1
        count += 1
    return count
