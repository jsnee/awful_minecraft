function snoeyz:begin_tired_drop_cooldown
execute if data entity @s Inventory[{Slot:7b}] run title @s title "Clumsy You"
execute if data entity @s Inventory[{Slot:7b}] run title @s subtitle "Butterfingers..."
execute if data entity @s Inventory[{Slot:7b}] run summon item ^ ^1 ^2 {Item:{id:"minecraft:stone",Count:1b},PickupDelay:20,Age:0,Tags:["dropped"]}
data modify entity @e[type=item,tag=dropped,limit=1] Item set from entity @s Inventory[{Slot:7b}]
item replace entity @s hotbar.7 with minecraft:air
tag @e[type=item] remove dropped