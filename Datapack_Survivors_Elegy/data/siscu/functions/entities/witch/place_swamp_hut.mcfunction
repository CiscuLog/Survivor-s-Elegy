#execute if block ~-2 ~ ~-1 #minecraft:cauldrons run say north
execute if block ~-2 ~ ~-1 #minecraft:cauldrons run setblock ~-1 ~ ~2 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "Siscu", rotation: "CLOCKWISE_180", posX: 10, mode: "LOAD", posY: -2, posZ: 4, integrity: 1.0f, showair: 0b, name: "siscu:witch_hut", sizeX: 22, sizeY: 17, sizeZ: 25, showboundingbox: 1b, x: 0, y: 0, z: 0}
execute if block ~-2 ~ ~-1 #minecraft:cauldrons run setblock ~-1 ~1 ~2 air
execute if block ~-2 ~ ~-1 #minecraft:cauldrons run summon falling_block ~-1 ~1.5 ~2 {BlockState:{Name:"minecraft:redstone_block"},Time:-100}

#execute if block ~2 ~ ~-1 #minecraft:cauldrons run say north_inverted
execute if block ~2 ~ ~-1 #minecraft:cauldrons run setblock ~1 ~ ~2 structure_block{metadata: "", mirror: "LEFT_RIGHT", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "Siscu", rotation: "NONE", posX: -10, mode: "LOAD", posY: -2, posZ: 4, integrity: 1.0f, showair: 0b, name: "siscu:witch_hut", sizeX: 22, sizeY: 17, sizeZ: 25, showboundingbox: 1b, x: 0, y: 0, z: 0}
execute if block ~2 ~ ~-1 #minecraft:cauldrons run setblock ~1 ~1 ~2 air
execute if block ~2 ~ ~-1 #minecraft:cauldrons run summon falling_block ~1 ~1.5 ~2 {BlockState:{Name:"minecraft:redstone_block"},Time:-100}

#execute if block ~-1 ~ ~2 #minecraft:cauldrons run say east
execute if block ~-1 ~ ~2 #minecraft:cauldrons run setblock ~2 ~ ~1 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "Siscu", rotation: "CLOCKWISE_90", posX: 4, mode: "LOAD", posY: -2, posZ: -10, integrity: 1.0f, showair: 0b, name: "siscu:witch_hut", sizeX: 22, sizeY: 17, sizeZ: 25, showboundingbox: 1b, x: 0, y: 0, z: 0}
execute if block ~-1 ~ ~2 #minecraft:cauldrons run setblock ~2 ~1 ~1 air
execute if block ~-1 ~ ~2 #minecraft:cauldrons run summon falling_block ~2 ~1.5 ~1 {BlockState:{Name:"minecraft:redstone_block"},Time:-100}

#execute if block ~-1 ~ ~-2 #minecraft:cauldrons run say east_inverted
execute if block ~-1 ~ ~-2 #minecraft:cauldrons run setblock ~2 ~ ~-1 structure_block{metadata: "", mirror: "LEFT_RIGHT", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "Siscu", rotation: "COUNTERCLOCKWISE_90", posX: 4, mode: "LOAD", posY: -2, posZ: 10, integrity: 1.0f, showair: 0b, name: "siscu:witch_hut", sizeX: 22, sizeY: 17, sizeZ: 25, showboundingbox: 1b, x: 0, y: 0, z: 0}
execute if block ~-1 ~ ~-2 #minecraft:cauldrons run setblock ~2 ~1 ~-1 air
execute if block ~-1 ~ ~-2 #minecraft:cauldrons run summon falling_block ~2 ~1.5 ~-1 {BlockState:{Name:"minecraft:redstone_block"},Time:-100}

#execute if block ~2 ~ ~1 #minecraft:cauldrons run say south
execute if block ~2 ~ ~1 #minecraft:cauldrons run setblock ~1 ~ ~-2 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "Siscu", rotation: "NONE", posX: -10, mode: "LOAD", posY: -2, posZ: -4, integrity: 1.0f, showair: 0b, name: "siscu:witch_hut", sizeX: 22, sizeY: 17, sizeZ: 25, showboundingbox: 1b, x: 0, y: 0, z: 0}
execute if block ~2 ~ ~1 #minecraft:cauldrons run setblock ~1 ~1 ~-2 air
execute if block ~2 ~ ~1 #minecraft:cauldrons run summon falling_block ~1 ~1.5 ~-2 {BlockState:{Name:"minecraft:redstone_block"},Time:-100}

#execute if block ~-2 ~ ~1 #minecraft:cauldrons run say south_inverted
execute if block ~-2 ~ ~1 #minecraft:cauldrons run setblock ~-1 ~ ~-2 structure_block{metadata: "", mirror: "LEFT_RIGHT", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "Siscu", rotation: "CLOCKWISE_180", posX: 10, mode: "LOAD", posY: -2, posZ: -4, integrity: 1.0f, showair: 0b, name: "siscu:witch_hut", sizeX: 22, sizeY: 17, sizeZ: 25, showboundingbox: 1b, x: 0, y: 0, z: 0}
execute if block ~-2 ~ ~1 #minecraft:cauldrons run setblock ~-1 ~1 ~-2 air
execute if block ~-2 ~ ~1 #minecraft:cauldrons run summon falling_block ~-1 ~1.5 ~-2 {BlockState:{Name:"minecraft:redstone_block"},Time:-100}

#execute if block ~1 ~ ~-2 #minecraft:cauldrons run say west
execute if block ~1 ~ ~-2 #minecraft:cauldrons run setblock ~-2 ~ ~-1 structure_block{metadata: "", mirror: "NONE", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "Siscu", rotation: "COUNTERCLOCKWISE_90", posX: -4, mode: "LOAD", posY: -2, posZ: 10, integrity: 1.0f, showair: 0b, name: "siscu:witch_hut", sizeX: 22, sizeY: 17, sizeZ: 25, showboundingbox: 1b, x: 0, y: 0, z: 0}
execute if block ~1 ~ ~-2 #minecraft:cauldrons run setblock ~-2 ~1 ~-1 air
execute if block ~1 ~ ~-2 #minecraft:cauldrons run summon falling_block ~-2 ~1.5 ~-1 {BlockState:{Name:"minecraft:redstone_block"},Time:-100}

#execute if block ~1 ~ ~2 #minecraft:cauldrons run say west_inverted
execute if block ~1 ~ ~2 #minecraft:cauldrons run setblock ~-2 ~ ~1 structure_block{metadata: "", mirror: "LEFT_RIGHT", ignoreEntities: 0b, powered: 0b, seed: 0L, author: "Siscu", rotation: "CLOCKWISE_90", posX: -4, mode: "LOAD", posY: -2, posZ: -10, integrity: 1.0f, showair: 0b, name: "siscu:witch_hut", sizeX: 22, sizeY: 17, sizeZ: 25, showboundingbox: 1b, x: 0, y: 0, z: 0}
execute if block ~1 ~ ~2 #minecraft:cauldrons run setblock ~-2 ~1 ~1 air
execute if block ~1 ~ ~2 #minecraft:cauldrons run summon falling_block ~-2 ~1.5 ~1 {BlockState:{Name:"minecraft:redstone_block"},Time:-100}

weather rain
schedule function siscu:world/swamp_hut/swamp_starters 5s