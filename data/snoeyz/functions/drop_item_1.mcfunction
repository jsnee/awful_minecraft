execute if data entity @s Inventory[{Slot:1b}] run summon item ^ ^1 ^2 {Item:{id:"minecraft:stone",Count:1b},PickupDelay:20,Age:0,Tags:["dropped"]}
data modify entity @e[type=item,tag=dropped,limit=1] Item set from entity @s Inventory[{Slot:1b}]
item replace entity @s hotbar.1 with minecraft:air
tag @e[type=item] remove dropped