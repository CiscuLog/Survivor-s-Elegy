# Elytra shutdown
execute if predicate siscu:entities/is_wearing_elytra if predicate siscu:entities/is_flying run function siscu:entities/player/elytra_shootdown/close_elytra
# advancement
advancement revoke @s only siscu:entities/hurt_by_electricity