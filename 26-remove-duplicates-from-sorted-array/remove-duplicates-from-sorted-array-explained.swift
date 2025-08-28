// Time = O(n)
// Space = O(1)
class Solution {
		/*
		Tenemos una array de números enteros ordenados de menor a mayor, del cual
		tenemos que eliminar los números duplicados en el mismo array, de tal 
		manera que un elemento aparezca solo una vez. Se tiene que devolver el
		número de elementos únicos que hay en nums.
		*/
    func removeDuplicates(_ nums: inout [Int]) -> Int {
		    /*
		     Variable para indicar el índice de escritura. Apunta al lugar donde
		    pondremos el próximo valor único.
		    */
        var n = 1
				
				/*
				Como el array está ordenado, si cambia el valor significa que se
				ha encontrado un nuevo valor único. Si es un nuevo único, lo
				copiamos a la posición n (compactando los únicos al principio) y
				avanzamos n para reservar el próximo hueco.
				*/
        for i in 1..<nums.count {
            if nums[i] != nums[i - 1] {
	            nums[n] = nums[i]
	            n += 1
            }
        }

        return n
    }
}
