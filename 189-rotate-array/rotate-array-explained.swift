// Time = O(n)
// Space = O(1)
class Solution1 {
		/*
		Tenemos un array de números enteros llamado nums ordenados 
		de menor a mayor. Hay que eliminar algunos duplicados in situ
		de modo que cada elemento único aparezca como máximo dos veces.
		El orden relativo de los elementos debe mantenerse igual. Da 
		igual lo que se deje más allá de los primeros k elementos. 
		Se tiene que devolver k después de colocar el resultado final
		en las primeras k posiciones de nums.
		*/
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        var k = k % n

				/*
				Creamos una función llamada reverse que invertirá en sitio
				los elementos del subarray nums[left...right]. Hace swaps
				desde los extremos hacia el centro. Lo que buscamos en este
				problema es que los últimos k elementos pasen al principio 
				manteniendo su orden relativo, y el resto se desplace a la
				derecha.
				*/
        func reverse(_ left: Int, _ right: Int) {
            var l = left
            var r = right
            while l < r {
                nums.swapAt(l, r)
                l += 1
                r -= 1
            }
        }

        // Reverse the whole array
        reverse(0, n - 1)
        // Reverse the first k elements
        reverse(0, k - 1)
        // Reverse the rest of the elements
        reverse(k, n - 1)
    }
}

// ANOTHER SOLUTION

class Solution2 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let k = k % nums.count
        reverse(&nums, 0, nums.count-1)
        reverse(&nums, 0, k-1)
        reverse(&nums, k, nums.count-1)
    }

    func reverse(_ num: inout [Int], _ start: Int, _ end: Int) {
        var start = start
        var end = end
        while start < end {
            num.swapAt(start, end)
            start += 1
            end -= 1
        }
    }
}
