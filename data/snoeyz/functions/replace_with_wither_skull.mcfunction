summon minecraft:wither_skull ^ ^ ^ {Tags:["incomingskull"],HasBeenShot:true,LeftOwner:true,Fire:-1s}
data modify entity @e[tag=incomingskull,limit=1] Motion set from entity @s Motion
data modify entity @e[tag=incomingskull,limit=1] power set from entity @s Motion
tag @e[tag=incomingskull] remove incomingskull
kill @s