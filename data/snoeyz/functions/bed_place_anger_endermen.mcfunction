tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,white_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,red_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,blue_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,cyan_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,gray_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,lime_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,pink_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,green_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,black_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,brown_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,orange_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,purple_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,yellow_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,magenta_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,light_blue_bed_used=1..}] add anger_endermen
tag @p[nbt={Dimension:"minecraft:the_end"},scores={dragon_bedding_warning=3..,light_gray_bed_used=1..}] add anger_endermen

execute as @e[type=enderman] at @s run summon minecraft:zombified_piglin ~ ~ ~
tp @e[type=enderman] 0 0 0
kill @e[type=enderman]

execute as @e[type=zombified_piglin] unless data entity @s AngryAt run data modify entity @s AngerTime set value 500
execute as @e[type=zombified_piglin] unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @p[tag=anger_endermen] UUID

tag @a remove anger_endermen