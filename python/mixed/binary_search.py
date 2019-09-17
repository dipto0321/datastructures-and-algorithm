def binary_search(element_list, target, start, end):
    if start > end:
        return
    mid_point = (start + end) // 2
    if element_list[mid_point] > target:
        return binary_search(element_list, target, start, mid_point-1)
    elif element_list[mid_point] < target:
        return binary_search(element_list, target, mid_point+1, end)
    else:
        return mid_point
