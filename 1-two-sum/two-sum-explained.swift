class Solution {
	/* 
	Es una función que tiene como parámetros un array de números 
	y como objetivo un número al que tendríamos que llegar haciendo
	la suma de dos números que se encuentran dentro del array.
	Se devuelve un array que contiene los índices de los dos números 
	cuya suma nos de el número objetivo.
	*/
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
		/* 
		Guard se usa cuando queremos asegurarnos de que una condición
		se cumple para poder seguir. Si no se cumple, salimos inmediatamente.
		Es decir, guard es una instrucción para verificar una condición que,
		si no se cumple, obliga a salir inmediatamente de la función (o del
		bloque actual).
			 guard condición else {
				 // qué hacer si la condición es falsa
				return / break / throw / etc.
				}
		La idea es:
			-Si la condición se cumple -> seguimos ejecutando el resto del código.
			-Si la condición NO se cumple -> se entra al bloque else y se sale temprano.
		Por eso se dice que guard es ideal para "validaciones de entrada" o 
		"early exit" (salida temprana).
		El resultado de nuestro caso es: asegúrate de que nums no esté vacío. Si está
		vacío, sal de la función devolviendo un array vacío. Si no, continúa con
		el resto del código.
		*/
        guard !nums.isEmpty else { return [] }

        /* 
        Hacemos value: index o valor -> índice porque el problema pide:
	        1. Encontrar rápidamente si un valor concreto (diff) ya apareció.
	        2. Obtener en qué índice apareció.
	    El array ya nos da gratis "índice -> valor", pero lo que necesitamos
	    realmente es la búsqueda inversa. Así, el buscar complementos lo haremos
	    en O(1).
	    Para incializar el diccionario hemos utilizado una sintaxis que crea una
	    instancia de un diccionario vacío de un tipo específico utilizando el 
	    inicializar del tipo ().
		 */ 
        var dict = [Int: Int]()

		/*
		El método .enumerated() en un array devuelve una secuencia de pares
		(índice, valor). Desempaquetamos esa tupla directamente en dos variables:
		index -> el índice del elemento en el array (posición) y num (el valor
		que está en esa posición).
				
		Posteriormente, calculamos en una constante la diferencia entre nuestro
		target y el número que toque en el array y buscamos si ese número que da
		la diferencia ya existe dentro del diccionario. Si existe, devolvemos 
		un array con el índice del número previo y el del actual; si no, añadimos
		ese número al diccionario en el índice correspondiente.
		*/
        for (index, num) in nums.enumerated() {
            let diff = target - num

            if let prevIndex = dict[diff] {
                return [prevIndex, index] 
            } else {
                dict[num] = index
            }
        }

        /*
        fallback, el cual no es necesario ya que siempre vamos a tener un resultado.
		 */ 
        return [-1, -1]
    }
