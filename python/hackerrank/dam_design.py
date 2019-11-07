"""
Problem Statement
A child likes to build mud walls by placing mud between walls positioned on a number line. The gap between walls will be referred to as a cell, and each cell will contain one segment of wall. The height of mud in a segment cannot exceed 1 unit above an adjacent stick or mud segment. Given the placement of a number of walls and their heights, determine the maximum height segment of mud that can be built. If no mud segment can be built, return 0.

For example, there are n = 3 walls at wallPositions = [1, 2, 4, 7] with wallHeights = [4, 5, 7, 11]. There is no space between the first two walls, so there is no cell for mud. Between positions 2 and 4, there is one cell. Heights of the surrounding walls are 5 and 7, so the maximum height of mud is 5 + 1 = 6. Between positions 4 and 7 there are two cells. The heights of surrounding walls are 7 and 11. The maximum height mud segment next to the stick of height 7 is 8. The maximum height mud next to a mud segment of height 8 and a stick of height 11 is 9. Mud segment heights are 6, 8 and 9, and the maximum height is 9. In the table below, digits are in the columns of walls and M is in the mud segments.
"""


def maxHeight(wallPositions, wallHeights):
    # Write your code here
    n = len(wallPositions)
    mud_max = 0
    for i in range(0, n - 1):
        if wallPositions[i] < (wallPositions[i + 1] - 1):
            # We have a gap
            heightDiff = abs(wallHeights[i + 1] - wallHeights[i])
            gapLen = wallPositions[i + 1] - wallPositions[i] - 1
            localMax = 0
            if gapLen > heightDiff:
                low = max(wallHeights[i + 1], wallHeights[i]) + 1
                remainingGap = gapLen - heightDiff - 1
                localMax = low + remainingGap / 2
            else:
                localMax = min(wallHeights[i + 1], wallHeights[i]) + gapLen

            mud_max = max(mud_max, localMax)

    return int(mud_max)


wall_pos = [1, 10]
wall_height = [1, 5]

print(maxHeight(wall_pos, wall_height))
