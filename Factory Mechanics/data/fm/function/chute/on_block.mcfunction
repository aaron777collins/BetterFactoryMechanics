data merge block ~ ~ ~ {TransferCooldown:0}

execute unless block ~ ~-1 ~ #fm:container if data storage minecraft:chute {Busy:0} if data block ~ ~ ~ Items[] run function fm:chute/drop

execute unless block ~ ~ ~ hopper run function fm:chute/remove