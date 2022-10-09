

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
func input(unsorted: inout [String])
{
    while let line = readLine()
    {
        unsorted.append(line)
    }
}

func swap(integers: inout [String], firstIndex:Int, secondIndex:Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
}

func sort(_ array: [String]) -> [String] {
    var arr = array
    var pass = 0
    var swapsCount = 0
    var swaps: Int
    print("Pass: 0, Swaps: 0/0, Array: \(array)")
    repeat {
        swaps = 0
        for value in 0..<arr.count - 1 {
            let thisIndex = value
            let nextIndex = value + 1

            let thisElement = arr[thisIndex]
            let nextElement = arr[nextIndex]

            if thisElement > nextElement {
                swap(integers: &arr, firstIndex: thisIndex, secondIndex: nextIndex)
                swaps += 1
                swapsCount += 1
            }
        }
        pass += 1
        print("Pass: \(pass), Swaps: \(swaps)/\(swapsCount), Array: \(arr)")
        
    } while swaps != 0
    return arr
}
var unsorted = [""]
input(unsorted:&unsorted)
unsorted.remove(at: 0)
print(sort(unsorted))
