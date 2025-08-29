// Time = O(n)
// Space = O(1)
class Solution {
		/*
		Tenemos una array ordenado de números enteros ordenados de menor a mayor, 
		del cual tenemos que eliminar algunos duplicados en el mismo array, de tal 
		manera que un elemento aparezca como máximo 2 veces. Se tiene que mantener
		el orden de los elementos. Se pide devolver k después de colocar el resultado 
		final en las primeras k posiciones de nums. No se debe asignar espacio
		adicional para otra matriz. Se tiene que hacer modificando la matriz de 
		entrada in situ con O(1) de memoria adicional.
		*/
    func removeDuplicates(_ nums: inout [Int]) -> Int {
		    /*
		    Otra manera de hacer esta parte sería: guard nums.count > 2 else 
		    { return nums.count }
		    */
        if nums.count <= 2 {
            return nums.count
        }
        
		    /*
		    Comenzamos con n = 2 porque los dos primeros valores siempre pueden
		    quedarse (si hay menos de dos elementos devolvemos el tamaño).
		    */
        var n = 2

				/*
				Para cada nums[i] hay que compararlo con nums[n-2]. Si son distintos,
				podemos escribir nums[i] en nums[n] y aumentar n. Si son iguales, entonces
				ya hay dos apariciones del mismo valor en nums[0..n-1], por eso saltamos
				nums[i] (no lo copiamos).
				*/
        for i in 2..<nums.count {
            if nums[i] != nums[n - 2] {
                nums[n] = nums[i]
                n += 1
            }
        }

        return n
    }
}
