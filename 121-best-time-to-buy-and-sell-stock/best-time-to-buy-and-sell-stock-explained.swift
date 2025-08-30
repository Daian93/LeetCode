// Time = O(n)
// Space = O(1)
class Solution {
		/*
		Tenemos un array llamado prices donde princes[i] es el precio de
		una acción determinada en el día i. Se busca maximizar las 
		ganancias, eligiendo un solo día para comprar una acción y 
		eligiendo un día diferente en el futuro para vender esa acción. 
		Hay que devolver la ganancia máxima que se puede obtener de esa
		transacción. Si no se puede obtener ninguna ganancia, se devuelve 0.
		*/
    func maxProfit(_ prices: [Int]) -> Int {
		    /*
		    Crearemos una variable minPrice en la que inicializaremos
		    el mejor precio para comprar hasta ahora. Usamos Int.max como
		    sentinela. Cualquier precio real será menor y lo sustituirá 
		    inmediatamente en la primera iteración. Así evitamos tener
		    que tratar el primer elemento como un caso especial. Por otro lado,
		    definimos la variable maxProfix que es la mejor ganancia encontrada
		    hasta el momento. Le asignamos el valor 0 ya que si nunca hay
		    una oportunidad de ganar (el precio siempre baja), el resultado
		    debe ser 0 (no realizamos la transacción).
		    */
        var minPrice = Int.max
        var maxProfit = 0
        
        /*
        Al terminar cada iteración, minPrice es el precio mínimo visto
        hasta ese día, mientras que maxProfit es la mejor ganancia
        posible vendiendo en algún día hasta el actual, con una compra
        previa al día de antes.
				*/
        for price in prices {
            if price < minPrice {
                minPrice = price
            } else {
                maxProfit = max(maxProfit, price - minPrice)
            }
        }
        
        return maxProfit
    }
}
