scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid

#define tag boomber.armor_stand.target
execute as @a[tag=boomber.armor_stand.player.init] if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid run tag @s add boomber.armor_stand.target
execute at @a[tag=boomber.armor_stand.target] anchored eyes positioned ^ ^-0.5 ^0.5 run tp @s ~ ~ ~
execute unless entity @a[tag=boomber.armor_stand.target] run function boomber:armor_stand/detector/remove
tag @a[tag=boomber.armor_stand.target] remove boomber.armor_stand.target