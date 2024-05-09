1.- Lista todos los elementos del menú ordenados por nombre de la A a la Z

for $a in doc("arepazo")/arepazo/menu
order by $a/nombre
return $a/nombre/data()


2.- Lista todas las bebidas del menú ordenados por nombre de la Z a la A

for $a in doc("arepazo")/arepazo/menu
where $a/@tipo='Bebidas'
order by $a/nombre descending
return $a/nombre/data()

3.- Lista todos los elementos del menú de tipo Comida y que cuesten mas de 4€

for $a in doc("arepazo")/arepazo/menu
where $a/@tipo='Comida' and $a/precio>4
return $a/nombre/data()



4.- Ordena los postres de mas caro a mas barato. Devuelveme el Nombre, la descripción y el precio de cada uno.

for $a in doc("arepazo")/arepazo/menu
where $a/@tipo='Postres' 
return <resultado>
{$a/nombre/data()},{$a/descripcion},
</resultado>

5.- Lista todos los elementos del menú con 2 o menos ingredientes del tipo Comida.

for $a in doc("arepazo")/arepazo/menu
where $a/@tipo='Comida' and count($a/ingrediente)<=2 
return $a/nombre/data()

6.- Calcula Cuanto hay que cobrar a alguien que pida 5 unidades del ID 7

for $a in doc("arepazo")/arepazo/menu
where $a/@id=7  
return $a/precio * 5

7.- Dime cuantos elementos hay en el Menú

for $a in doc("arepazo")/arepazo
return count($a/menu)

8.- Dime cual es el precio  más caro y más barato del menu. Ejemplo:
<res>
    <max>10</max>
    <min>1</min>
</res>


for $a in doc("arepazo")/arepazo
return
<res>
  <max>{max($a/menu/precio)}</max>
  <min>{min($a/menu/precio)}</min>
</res>