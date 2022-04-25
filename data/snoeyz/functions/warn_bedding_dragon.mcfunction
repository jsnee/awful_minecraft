scoreboard players add @s dragon_bedding_warning 1
execute if score @s dragon_bedding_warning matches 1 run title @s title "Ummmm..."
execute if score @s dragon_bedding_warning matches 1 run title @s subtitle "I don't think that's such a good idea...."
execute if score @s dragon_bedding_warning matches 2 run title @s title "I'm Warning You"
execute if score @s dragon_bedding_warning matches 2 run title @s subtitle "That's a really bad idea"
execute if score @s dragon_bedding_warning matches 3 run title @s title "Fine"
execute if score @s dragon_bedding_warning matches 3 run title @s subtitle "Don't say I didn't warn you...."
execute in minecraft:the_end unless score @s dragon_bedding_warning matches 3.. run setblock 0 67 0 air destroy