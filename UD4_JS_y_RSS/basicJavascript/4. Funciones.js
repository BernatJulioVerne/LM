// Para hacer una funcion, podemos usar function


function factorial(num) {
    if (num === 1) {
        return 1
    }
    return num * factorial(num - 1)
}

//Para llamar a una funcion, podemos usar el nombre de la funcion y los parametros que necesite

var n = prompt("Introduce un numero para calcular el factorial: ")
console.log(" el factorial de " + n + " es :",factorial(n));
