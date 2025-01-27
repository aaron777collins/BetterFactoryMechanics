execute align yxz as @e[type=item,dy=1.0,dx=0,dz=0,predicate=fm:millable,limit=1] run tag @s add Millstone_Collect

#execute align yxz as @e[type=item,dy=1.0,dx=0,dz=0,limit=1,tag=Millstone_Collect] run tag @s add Millstone_Collect_Only
#execute align yxz if entity @e[type=item,dy=1.0,dx=0,dz=0,limit=1,tag=Millstone_Collect_Only] run function fm:millstone/collect with entity @e[type=item,dy=1.0,dx=0,dz=0,limit=1,tag=Millstone_Collect_Only]
#execute align yxz run kill @e[type=item,dy=1.0,dx=0,dz=0,limit=1,tag=Millstone_Collect_Only]

execute align yxz if entity @e[type=item,dy=1.0,dx=0,dz=0,limit=1,tag=Millstone_Collect] run function fm:millstone/collect with entity @e[type=item,dy=1.0,dx=0,dz=0,limit=1,tag=Millstone_Collect]
execute align yxz run kill @e[type=item,dy=1.0,dx=0,dz=0,limit=1,tag=Millstone_Collect]