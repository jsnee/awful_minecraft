function snoeyz:begin_tired_drop_cooldown
execute if data entity @s Inventory[{Slot:4b}] run title @s title "Eyes Watery"
execute if data entity @s Inventory[{Slot:4b}] run title @s subtitle "You blink away tired tears"
execute if data entity @s Inventory[{Slot:4b}] run summon item ^ ^1 ^2 {Item:{id:"minecraft:stone",Count:1b},PickupDelay:20,Age:0,Tags:["dropped"]}
data modify entity @e[type=item,tag=dropped,limit=1] Item set from entity @s Inventory[{Slot:4b}]
item replace entity @s hotbar.4 with minecraft:air
tag @e[type=item] remove dropped