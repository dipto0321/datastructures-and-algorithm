
def tower(disk_numbers, source, auxilary, destination):
    if disk_numbers == 1:
        print(source + ' to ' + destination)
        return
    tower(disk_numbers - 1, source, destination, auxilary)
    print(source + ' to ' + destination)
    tower(disk_numbers - 1, auxilary, source, destination)
    return


tower(6, '1', '2', '3')
