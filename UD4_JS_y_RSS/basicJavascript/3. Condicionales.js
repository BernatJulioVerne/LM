// Para hacer un if, podemos usar if, else if, else

var edad = 18

if (edad === 18) {

    console.log("Tienes 18 años")
}
else if (edad === 19) {
    console.log("Tienes 19 años")
}
else if (edad === 20) {
    console.log("Tienes 20 años")
}
else {
    console.log("Tienes más de 20 años")
}

// usamos === para comparar valores y tipos de datos. Si solo ponemos  ==, solo comparamos valores, no el tipo del dato. Por ejemplo

var edad = "18"

if (edad === 18) {
    console.log("Tienes 18 años")
}

// no se ejecutaria, porque edad es un string, no un numero. Si ponemos un solo =, si se ejecutaria, porque solo compara valores, no tipos de datos.


// Para hacer un switch, podemos usar switch

switch (edad) {
    case 18:
        console.log("Tienes 18 años")
        break;
    case 19:
        console.log("Tienes 19 años")
        break;
    case 20:
        console.log("Tienes 20 años")
        break;
    default:
        console.log("Tienes más de 20 años")
        break;
}
