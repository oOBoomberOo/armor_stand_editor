scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid

#define tag boomber.armor_stand.target
execute as @a[tag=boomber.armor_stand.player.init] if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid run tag @s add boomber.armor_stand.target

# Workaround for MC-172960: https://bugs.mojang.com/browse/MC-172960
execute as @a[tag=boomber.armor_stand.target] at @s anchored eyes positioned ^ ^-0.1 ^0.5 as @e[tag=boomber.armor_stand.detector, limit=1, sort=nearest] run function boomber:armor_stand/teleporter/run

execute unless entity @a[tag=boomber.armor_stand.target] run function boomber:armor_stand/detector/remove
tag @a[tag=boomber.armor_stand.target] remove boomber.armor_stand.target