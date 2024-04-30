for $a in doc("pokedata")/pokedex/pokemon
where count($a/type)=1 and $a/stats/ATK>80
and $a/@id<100
order by $a//DEF descending
return <pokemon> {$a/name/data()},{$a//type/data()}</pokemon>



for $a in doc("pokedata")/pokedex/pokemon
where count($a/type)=1 and $a/stats/ATK>80
order by $a//DEF descending
return <a><nombre>{$a/name/data()}</nombre>
          <tipo>{$a//type/data}</tipo></a>