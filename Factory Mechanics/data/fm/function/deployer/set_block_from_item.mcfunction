$execute if data storage fm:tables ItemToBlock."$(id)" run data modify storage fm:temp Block_Place.id set from storage fm:tables ItemToBlock."$(id)"

function fm:deployer/set_block with storage fm:temp Block_Place

#execute if block ^ ^ ^2.5 #fm:container if data storage fm:temp Block_Place.components."minecraft:container" run function fm:deployer/set_block_container with storage fm:temp Block_Place.components."minecraft:container"
execute if block ^ ^ ^2.5 spawner if data storage fm:temp Block_Place.components."minecraft:block_entity_data" run function fm:deployer/set_block_spawner with storage fm:temp Block_Place.components."minecraft:block_entity_data"
execute if block ^ ^ ^2.5 spawner if data storage fm:temp Block_Place.components."minecraft:custom_data".block_entity_data run function fm:deployer/set_block_spawner with storage fm:temp Block_Place.components."minecraft:custom_data".block_entity_data
#Compatibility with silk touch spawner datapacks