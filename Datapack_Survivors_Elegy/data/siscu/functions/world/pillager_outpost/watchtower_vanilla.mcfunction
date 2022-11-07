#generate outpost

setblock ~ ~ ~ structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "Siscu", rotation: "NONE", posX: -7, mode: "LOAD", posY: -1, posZ: -7, integrity: 1.0f, showair: 0b, name: "siscu:pillager_outpost/watchtower_1", sizeX: 15, sizeY: 21, sizeZ: 15, showboundingbox: 1b, x: 0, y: 0, z: 0}
setblock ~ ~1 ~ air
summon falling_block ~ ~1.5 ~ {BlockState:{Name:"minecraft:redstone_block"},Time:-100}