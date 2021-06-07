import Foundation

final class FillWithColor {
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        
        let color = image[row][column]
        var resultImage : [[Int]] = image
        
        var value : [(Int, Int)] = [(row, column)]
        
        while !value.isEmpty {
            let newCell = value.removeFirst()
            resultImage[newCell.0][newCell.1] = newColor
            
            if(newCell.0 + 2 <= resultImage.count && resultImage[newCell.0 + 1][newCell.1] == color) {
                value.append((newCell.0 + 1, newCell.1))
            }
            if(newCell.1 + 2 <= resultImage[0].count && resultImage[newCell.0][newCell.1 + 1] == color) {
                value.append((newCell.0, newCell.1 + 1))
            }
            if(newCell.0 - 1 >= 0 &&  resultImage[newCell.0 - 1][newCell.1] == color) {
                value.append((newCell.0 - 1, newCell.1))
            }
            if(newCell.1 - 1 >= 0 && resultImage[newCell.0][newCell.1 - 1] == color) {
                value.append((newCell.0, newCell.1 - 1))
            }
        }
        
        return resultImage
    }
}
