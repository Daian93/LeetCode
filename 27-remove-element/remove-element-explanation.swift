// Time = O(n)
// Space = O(1)
class Solution {
		/*
		Tenemos un array de números enteros llamado nums y un valor val y queremos
		eliminar todas las ocurrencias de val en el array. Sin embargo, no podemos
		usar otro array, todo debe hacerse in-place (en el mismo nums). Como resultado 
		nos piden los primeros k elementos de nums distintos de vals y el valor de k
		(la cantidad de elementos que quedan). El contenido después de k no importa 
		(pueden quedar valores viejos, ceros, lo que sea).
		*/
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
		    /*
		    Usaremos dos "punteros": i recorre el array desde el principio y n
		    marca el "final válido" del array.
		    */
        var i = 0
        var n = nums.count
        
        /*
        Lo que haremos es ir comparando si el elemento que tenemos es igual o
        no al valor que se pide. Si es diferente, pasamos al siguiente elemento,
        pero si es el mismo, tenemos que sustituirlo por el último elemento
        válido (nums[n-1]) y reducimos n. Así descartamos el val en O(1), sin
        mover todos los elementos hacia la izquierda. Seguimos así hasta que 
        i alcanza a n.
        */
        while i < n {
            if nums[i] == val {
                nums[i] = nums[n - 1]
                n -= 1
            } else {
                i += 1
            }
        }
        
				// Devolvemos n que refleja el tamaño válido restante del array.
        return n
    }
}
