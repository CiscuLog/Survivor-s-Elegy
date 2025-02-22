# This code section generates a random name for a city and a person (its mayor)
# It must be always executed as a marker

## City name
data merge entity @s {data:{City1:"BS ",City2:"City"}}
# City1
data merge storage siscu:volatile {string_list:[\
"Grand",\
"New",\
"Old",\
"North",\
"South",\
"East",\
"West",\
"Stoney ",\
"Iron",\
"Golden ",\
"Copper ",\
"Silver ",\
"Coal "\
]}
execute store result storage siscu:volatile Randomiser byte 1 run random value 0..12
data merge storage siscu:volatile {String:"City1"}
function siscu:world/infected_city/name_randomiser/store_data with storage siscu:volatile

# City2
data merge storage siscu:volatile {string_list:[\
"Grove",\
"Plains",\
"Woods",\
"Haven",\
"Valley",\
"Point",\
"Heights",\
"Ridge",\
"Crest",\
"View",\
"Crossing",\
"Fields",\
"Prarie"\
]}
execute store result storage siscu:volatile Randomiser byte 1 run random value 0..12
data merge storage siscu:volatile {String:"City2"}
function siscu:world/infected_city/name_randomiser/store_data with storage siscu:volatile

## Mayor Name
# Mayor1
data merge entity @s {data:{Mayor1:"Mayor ",Mayor2:"Naisse"}}
data merge storage siscu:volatile {string_list:[\
"Alphonse",\
"Basil",\
"Thomas",\
"Geoffrey",\
"Nick",\
"Francis",\
"Zachary",\
"Abigail",\
"Barbara",\
"Bianca",\
"Catherine",\
"Diana",\
"Eleanor",\
"Elizabeth",\
"Grace",\
"Laura",\
"Martha",\
"Olivia",\
"Sarah",\
"Victoria",\
"Waxed Lightly Weathered Cut Copper Stairs"]}
execute store result storage siscu:volatile Randomiser byte 1 run random value 0..17
data merge storage siscu:volatile {String:"Mayor1"}
function siscu:world/infected_city/name_randomiser/store_data with storage siscu:volatile

# Mayor2
data merge storage siscu:volatile {string_list:[\
"Bean",\
"Marshall",\
"Edwards",\
"Adams",\
"Carter",\
"Morrison",\
"Weber",\
"Oyle",\
"Ramirez",\
"Haddock",\
"Bolivar",\
"Thompson",\
"Tapioca",\
"Bazarov",\
"Castafiore",\
"Wagner",\
"Finch",\
"Delcourt",\
"Chester",\
"Tournesol",\
"da Figueira",\
"Weber",\
"Silvers"]}
execute store result storage siscu:volatile Randomiser byte 1 run random value 0..21
data merge storage siscu:volatile {String:"Mayor2"}
function siscu:world/infected_city/name_randomiser/store_data with storage siscu:volatile

#data remove storage siscu:volatile string_list
