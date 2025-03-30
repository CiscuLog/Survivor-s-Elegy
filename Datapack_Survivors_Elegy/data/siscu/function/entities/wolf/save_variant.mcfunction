
$data merge storage siscu:volatile {WolfVariant:{UUID:$(UUID),variant:"$(variant)"}}
#data modify storage siscu:volatile WolfVariant.UUID set from entity @s UUID
#data modify storage siscu:volatile WolfVariant.variant set from entity @s variant

data modify storage siscu:database WolfVariantList append from storage siscu:volatile WolfVariant
