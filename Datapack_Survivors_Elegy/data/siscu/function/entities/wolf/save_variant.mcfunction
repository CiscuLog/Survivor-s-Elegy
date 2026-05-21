
$data merge storage siscu:volatile {WolfVariant:{UUID:$(UUID),variant:"$(variant)"}}

data modify storage siscu:database WolfVariantList append from storage siscu:volatile WolfVariant
