// Hay que seguir el Boyer–Moore Voting Algorithm
// Time = O(n)
// Space = O(1)
class Solution {
		/*
		Tenemos un array de números enteros de tamaño n y nos piden devolver
		el elemento que aparece más de n/2 veces. Tenemos que suponer que el
		elemento mayoritario siempre va a existir en el array.
		*/
    func majorityElement(_ nums: [Int]) -> Int {
		    /*
		    Seguiremos el algoritmo Boyer-Moore el cual mantiene un candidato 
		    y un contador. Recorre el array y cancela pares de elementos distintos;
		    al final el candidato que queda es el elemento mayoritario (el que aparece
		    > n/2 veces).
		    */
        var candidate = nums[0]
        var count = 0
        
        /*
        */
        for num in nums {
            if count == 0 {
                candidate = num
            }
            /*
            Operación compacta: si num es igual a candidate incrementamos
            count en +1, si no lo es decrementamos en -1.
            */
            count += (num == candidate) ? 1 : -1
        }
        
        return candidate
    }
}
