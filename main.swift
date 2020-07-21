import Foundation

private let countSmallerElements: CountSmallerElements = CountSmallerElements()
private let input: [Int] = [7, 5,2,6,1]

let smallerElementsCountArray: [SmallerElementsCount] = countSmallerElements.countSmaller(input)

print(smallerElementsCountArray)
