// Time: O(m+n)
// Space: O(1)

class Solution {
		/*
		Nos encontramos con dos arrays de números enteros, nums1 y nums2. m es el 
		número de elementos en el array nums1 y n es el número de elementos en el
		array nums2. 
		inout en nums1 significa que la función modifica nums1 en su sitio (no 
		devuelve un nuevo array).
		*/
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
		  /*
		  Para resolver este problema haremos uso de "punteros". El primero de ellos, p1,
		  apunta al índice del último elemento "válido" en nums1. El segundo de ellos,
		  p2, apunta al índice del último elemento en nums2. Finalmente, p, corresponde
		  al índice del último espacio en nums1. Cabe destacar que en realidad no 
		  son punteros de memoria como en C, sino simplemente índices enteros que
		  usamos para movernos dentro de los arrays. En otras palabras, es más bien
		  un índice que actúa como un cursor dentro del array. No guarda direcciones
		  de memoria, sino posiciones (Int).
		  Evitamos el uso del shadowing (usar otra variable con el mismo nombre que
		  ya existe en el mismo alcance, es decir, por ejemplo m = m -1), porque
		  puede cambiar el significado de los cálculos posteriores sin que nos 
		  demos cuenta (por ejemplo en last = m + n - 1).
		  */
	    var p1 = m - 1           
      	var p2 = n - 1           
     	var p = m + n - 1       

        /* Merge en orden inverso. Mientras haya elementos pendientes, comparamos 
        los elementos más grandes pendientes de cada array (nums1[p1] y nums2[p2]).
        Posteriormente, colocamos el mayor de los dos en nums1[p] (que es la 
        posición libre más a la derecha) y decrementamos el puntero correspondiente
        y el puntero p. Repetimos este paso hasta que uno de los arrays se quede
        sin elementos pendientes.
        */
        while p1 >= 0 && p2 >= 0 {
            if nums1[p1] > nums2[p2] {
                nums1[p] = nums1[p1]
                p1 -= 1
            } else {
                nums1[p] = nums2[p2]
                p2 -= 1
            }
            p -= 1
        }

        // Si quedan elementos en nums2, los copiamos.
        while p2 >= 0 {
        	nums1[p] = nums2[p2]
            p2 -= 1
            p -= 1
        }
    }
}
