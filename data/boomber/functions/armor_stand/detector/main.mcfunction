#define tag boomber.armor_stand.detector.targeted
tag @s add boomber.armor_stand.detector.targeted
scoreboard players operation #target_uid bb.ae.uid1 = @s bb.ae.uid1
scoreboard players operation #target_uid bb.ae.uid2 = @s bb.ae.uid2
scoreboard players operation #target_uid bb.ae.uid3 = @s bb.ae.uid3
scoreboard players operation #target_uid bb.ae.uid4 = @s bb.ae.uid4

#define tag boomber.armor_stand.target
execute as @a[tag=!global.ignore] if score @s bb.ae.uid1 = #target_uid bb.ae.uid1 if score @s bb.ae.uid2 = #target_uid bb.ae.uid2 if score @s bb.ae.uid3 = #target_uid bb.ae.uid3 if score @s bb.ae.uid4 = #target_uid bb.ae.uid4 run tag @s add boomber.armor_stand.target

# Workaround for MC-172960: https://bugs.mojang.com/browse/MC-172960
execute as @a[tag=boomber.armor_stand.target] at @s anchored eyes positioned ^ ^-0.1 ^0.5 as @e[tag=boomber.armor_stand.detector.targeted] run function boomber:armor_stand/teleporter/run

execute unless entity @a[tag=boomber.armor_stand.target] run function boomber:armor_stand/detector/remove
tag @a[tag=boomber.armor_stand.target] remove boomber.armor_stand.target
tag @s remove boomber.armor_stand.detector.targeted
scoreboard players reset #target_uid bb.ae.uid1
scoreboard players reset #target_uid bb.ae.uid2
scoreboard players reset #target_uid bb.ae.uid3
scoreboard players reset #target_uid bb.ae.uid4