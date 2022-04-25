function snoeyz:begin_tired_drop_cooldown
execute if data entity @s Inventory[{Slot:8b}] run playsound entity.zombie.ambient player @s
execute if data entity @s Inventory[{Slot:8b}] run title @s title "A Zombie Growls"
execute if data entity @s Inventory[{Slot:8b}] run title @s subtitle "Or is your exhaustion getting to you?"
execute if data entity @s Inventory[{Slot:8b}] run summon item ^ ^1 ^2 {Item:{id:"minecraft:stone",Count:1b},PickupDelay:20,Age:0,Tags:["dropped"]}
data modify entity @e[type=item,tag=dropped,limit=1] Item set from entity @s Inventory[{Slot:8b}]
item replace entity @s hotbar.8 with minecraft:air
tag @e[type=item] remove dropped