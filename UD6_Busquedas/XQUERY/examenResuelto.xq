1.-
/laliga/equipos/equipo/nombre/data()

2.-

/laliga/partidos/partido[local/nombre/@idEquipo='e19']

3.-

count(/laliga/partidos/partido[local/nombre/@goles < visitante/nombre/@goles])


4.-


count(/laliga/partidos/partido/local/nombre[@idEquipo=(/laliga/equipos/equipo[ciudad="Seville"]/@id/data()

)])

5.-


avg(/laliga/partidos/partido/visitante/nombre/@goles)




6.-

for $e in doc("laliga0910")/laliga/equipos/equipo
order by $e/ciudad descending
return $e/ciudad/data()

7.-

for $e in doc("laliga0910")/laliga/equipos/equipo
order by $e/capacidad ascending
return $e/nombre/data()

8.-

for $e in doc("laliga0910")/laliga/equipos
return sum($e/equipo/capacidad)

9.-

for $e in doc("laliga0910")/laliga/partidos/partido
where $e/visitante/nombre/@goles>4
return 
<partido>
	<nombreEquipoVisitante>
	{$e/visitante/nombre/data()}
</nombreEquipoVisitante>
	<fechaPartido>
{$e/fecha}
</fechaPartido>
</partido>


10.-


for $e in doc("laliga0910")/laliga/partidos/partido
where $e/visitante/nombre/@goles = $e/local/nombre/@goles
return 
<empate>
	<visitante>
	{$e/visitante/nombre/data()}
</visitante>
	<local>
{$e/local/nombre/data()}
</local>
</empate>
