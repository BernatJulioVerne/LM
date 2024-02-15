function factorial(num) {
    if (num === 1) {
        return 1
    }
    return num * factorial(num - 1)
}

var n = prompt("Introduce un numero para calcular el factorial: ")
console.log(" el factorial de " + n + " es : " + factorial(n));