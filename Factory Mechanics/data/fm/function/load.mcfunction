tellraw @a ["",{"text":"Factory ","bold":true,"color":"gold"},{"text":"Mechanics","bold":true,"color":"#521800"},{"text":" - ","bold":true,"color":"gray"},{"text":"Loaded","bold":true,"color":"green"}]

scoreboard objectives add Washing_Time dummy
scoreboard objectives add Blasting_Time dummy
scoreboard objectives add Smoking_Time dummy
scoreboard objectives add Haunting_Time dummy
scoreboard objectives add Freezing_Time dummy

scoreboard objectives add FM.Int_Save dummy

scoreboard objectives add Item_Amount dummy
scoreboard objectives add New_Item_Amount dummy
scoreboard objectives add Byproduct_Item_Amount dummy

scoreboard objectives add .Slot dummy

scoreboard objectives add const dummy
scoreboard players set 0 const 0
scoreboard players set 1 const 1
scoreboard players set 2 const 2
scoreboard players set 3 const 3
scoreboard players set 4 const 4
scoreboard players set 5 const 5
scoreboard players set 6 const 6
scoreboard players set 7 const 7
scoreboard players set 8 const 8
scoreboard players set 64 const 64
scoreboard players set 119 const 119

data modify storage fm:tables ItemToBlock set value {"minecraft:wheat_seeds":"minecraft:wheat","minecraft:carrot":"minecraft:carrots","minecraft:potato":"minecraft:potatoes","minecraft:melon_seeds":"minecraft:melon_stem","minecraft:pumpkin_seeds":"minecraft:pumpkin_stem","minecraft:beetroot_seeds":"minecraft:beetroots","minecraft:sweet_berries":"minecraft:sweet_berry_bush","minecraft:cocoa_beans":"minecraft:cocoa","minecraft:glow_berries":"minecraft:cave_vines"}

data modify storage chute Busy set value 0
data modify storage saw Busy set value 0
data modify storage drill Busy set value 0
data modify storage millstone Busy set value 0
data modify storage harvester Busy set value 0

schedule clear fm:tick_3t
function fm:tick_3t
schedule clear fm:tick_1s
function fm:tick_1s
schedule clear fm:tick_2s
function fm:tick_2s
schedule clear fm:tick_3s
function fm:tick_3s