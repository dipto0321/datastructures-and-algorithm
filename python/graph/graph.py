class AdjNode:
    def __init__(self, data):
        self.vertex = data
        self.next = None


class Graph:
    def __init__(self, vertices):
        self.V = vertices
        self.graph = [None] * self.V

    def add_edge(self, src, destination):
        node = AdjNode(destination)
        node.next = self.graph[src]
        self.graph[src] = node
        node = AdjNode(src)
        node.next = self.graph[destination]
        self.graph[destination] = node

    def print_graph(self):
        for i in range(self.V):
            print("Adjacency list of vertex {}\n head".format(i), end="")
            temp = self.graph[i]
            while temp:
                print(" -> {}".format(temp.vertex), end="")
                temp = temp.next
            print("\n")


if __name__ == "__main__":
    V = 6
    graph = Graph(V)
    graph.add_edge(0, 2)
    graph.add_edge(1, 4)
    graph.add_edge(2, 5)
    graph.add_edge(2, 3)
    graph.add_edge(4, 5)
    graph.print_graph()
