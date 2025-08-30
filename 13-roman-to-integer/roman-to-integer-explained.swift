// Time = O(n)
// Space = O(1) - El diccionario es constante en tamaño -.
class Solution {
		/*
		Nos dan un número romano en un String y tenemos que
		convertirlo en un número entero. Hay que tener en 
		cuenta que los números romanos suelen escribirse de 
		mayor a menor, de izquierda a derecha. Sin embargo, el
		número cuatro no se escribe IIII, sino IV. Como el uno
		está delante del cinco, lo restamos y obtenemos cuatro.
		El mismo principio se aplica al número nueve, que se
		escribe IX. Hay seis casos en los que se utiliza la
		resta: IV = 4, IX = 9, XL = 40, XC = 90, CD = 400 y
		CM = 900.
		*/
    func romanToInt(_ s: String) -> Int {
		    //Mapeamos cada carácter romano a su valor entero.
        let romanValues: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        var result = 0
        var prevValue = 0

				/*
				prevValue guarda el valor del símbolo que se acaba
				de procesar (el símbolo a la derecha del actual en
				la representación original). Si el valor actual es menor 
				que prevValue significa que es una notación sustractiva, 
				por tanto restaremos value. Si el valor actual es mayor
				o igual que prevValue, sumaremos value. Finalmente, se
				actualiza prevValue = value. 
				*/
        for char in s.reversed() {
		        /*
		        Otra manera de manejar el error podría ser la siguiente:
			        guard let value = Solution.romanValues[char] else {
                continue
	            }
		        */
            if let value = romanValues[char] {
                if value < prevValue {
                    result -= value
                } else {
                    result += value
                }
                prevValue = value
            }
        }

        return result
    }
}
