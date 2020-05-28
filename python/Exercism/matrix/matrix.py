class Matrix(object):
    SPLIT_NL = "\n"
    SPLIT_SP = " "

    def __init__(self, matrix_string):
        self.mat_row = self.__matrix(matrix_string)
        self.mat_col = self.__matrix_transpose(self.mat_row)

    def row(self, index):
        return self.mat_row[index - 1]

    def column(self, index):
        return self.mat_col[index - 1]

    def __matrix(self, mat_str):
        return [
            [int(y) for y in x.split(self.SPLIT_SP)]
            for x in mat_str.split(self.SPLIT_NL)
        ]

    def __matrix_transpose(self, mat):
        return [[mat[j][i] for j in range(len(mat))] for i in range(len(mat[0]))]
