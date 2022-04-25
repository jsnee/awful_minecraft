function snoeyz:begin_tired_drop_cooldown
execute if data entity @s Inventory[{Slot:2b}] run effect give @s minecraft:mining_fatigue 2
execute if data entity @s Inventory[{Slot:2b}] run effect give @s minecraft:slowness 2
execute if data entity @s Inventory[{Slot:2b}] run title @s title "Exhausted"
execute if data entity @s Inventory[{Slot:2b}] run title @s subtitle "You take a second to catch your breath"
execute if data entity @s Inventory[{Slot:1b}] run summon item ^ ^1 ^2 {Item:{id:"minecraft:stone",Count:1b},PickupDelay:20,Age:0,Tags:["dropped"]}
data modify entity @e[type=item,tag=dropped,limit=1] Item set from entity @s Inventory[{Slot:1b}]
item replace entity @s hotbar.1 with minecraft:air
tag @e[type=item] remove dropped