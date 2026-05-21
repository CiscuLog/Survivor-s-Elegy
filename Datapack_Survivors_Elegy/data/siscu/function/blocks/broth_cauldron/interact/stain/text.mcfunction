
execute if score stains siscu.broth_data matches 0 run return run title @p[tag=siscu.broth_interacting] actionbar {text:"\"stains\" to \"clean\""}
execute if score stains siscu.broth_data matches 1..10 run return run title @p[tag=siscu.broth_interacting] actionbar {text:"\"stains\" to \"stained\""}
execute if score stains siscu.broth_data matches 11..20 run return run title @p[tag=siscu.broth_interacting] actionbar {text:"\"stains\" to \"dirty\""}
return run title @p[tag=siscu.broth_interacting] actionbar {text:"\"stains\" to \"filthy\""}