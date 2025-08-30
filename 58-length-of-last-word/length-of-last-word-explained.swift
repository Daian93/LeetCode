// Time = O(n)
// Space = O(n)
class Solution {
		/*
		Tenemos una cadena llamada s compuesta por palabras y
		espacios. Nos piden devolver la longitud de la última
		palabra de la cadena. En nuestro caso, una palabra es
		una subcadena máxima compuesta únicamente por caracteres
		que no sean espacios.
		*/
    func lengthOfLastWord(_ s: String) -> Int {
        var count = 0
        
        /*
        Para eliminar los espacios en blanco la final de
        la cadena (y también del principio, aunque para este
        ejercicio no es necesario) utilizaremos el método
        trimmingCharacters. Una vez quitados los espacios al
        principio y al final de la cadena, la recorremos e 
        incrementamos el contador si existe una palabra, lo 
        cual representará la longitud de la palabra y lo
        pondremos a 0 si nos encontramos con un espacio. Así,
        obtendremos el la longitud de la última palabra de la
        cadena s.
				*/
        for char in s.trimmingCharacters(in: .whitespaces){
            if char != " " {
                count += 1
            } else {
                count = 0
            }
        }
        return count
    }
}

// ANOTHER SOLUTION_1
       
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let arrayOfWords = s.split(separator: " ")
        return arrayOfWords.last?.count ?? 0
    }
}

// ANOTHER SOLUTION_2 (with Runtime 0 ms)

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let sArray = Array(s)
        var count = 0
        for i in (0..<sArray.count).reversed() {
            if !(sArray[i] == " ") {
                count += 1
            } else if (sArray[i] == " ") && (count > 0) {
                break
            }
        }
        return count
    }
}
