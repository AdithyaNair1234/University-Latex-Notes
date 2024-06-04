def matrixMultiplication(A, B):
    columnsA = len(A)
    rowsA = len(A[1])
    columnsB = len(B)
    rowsB = len(B[1])
    emptyVal = 0
    if(columnsA == rowsB):
        C = [[emptyVal for x in range(rowsA)] for y in range(columnsB)]
        for i in range(rowsA):
            for j in range(columnsB):
                for k in range(rowsB):
                    C[i][j] = C[i][j] + A[i][k]*B[k][j]
        return C
    else:
        print("Matrix Multiplication Is Not Possible.")

A = [[2,2],[4,4]]
B = [[3,3],[5,6]]
print(matrixMultiplication(A,B))
