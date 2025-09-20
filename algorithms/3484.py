# 3484. Design Spreadsheet
# https://leetcode.com/problems/design-spreadsheet/?envType=daily-question&envId=2025-09-19

class Spreadsheet:

    def __init__(self, rows: int):
        self.data = defaultdict(lambda: defaultdict(int))
        for key in range(ord('A'), ord('Z') + 1):
            self.data[chr(key)]
        
    def setCell(self, cell: str, value: int) -> None:
        key1, key2 = cell[0], cell[1:]
        self.data[key1][key2] = value

    def resetCell(self, cell: str) -> None:
        key1, key2 = cell[0], cell[1:]
        self.data[key1][key2] = 0

    def getValue(self, formula: str) -> int:
        formula = formula.lstrip('=')
        x, y = formula.split('+')
        #print(f"{x} + {y}")
        answer = 0
        if 'A' <= x[0] <= 'Z':
            answer += self.data[x[0]][x[1:]]
        else:
            answer += int(x)
        if 'A' <= y[0] <= 'Z':
            answer += self.data[y[0]][y[1:]]
        else:
            answer += int(y)
        return answer
# Your Spreadsheet object will be instantiated and called as such:
# obj = Spreadsheet(rows)
# obj.setCell(cell,value)
# obj.resetCell(cell)
# param_3 = obj.getValue(formula)
