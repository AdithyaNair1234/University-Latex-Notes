def funlinspace(int start, int end, int count):
    # start + (count-1)D = end
    D = (end - start)/(count-1)
    L = []
    for i in 1:count:
        L.append(start + (i-1)*D)
