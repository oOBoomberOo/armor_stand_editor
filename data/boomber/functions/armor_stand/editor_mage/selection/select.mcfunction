tag @s add boomber.armor_stand.editing
scoreboard players set #bb.ae.raycast bb.success 1
execute as @e[type=armor_stand, tag=boomber.armor_stand.target_stand] run function boomber:armor_stand/smart_stand/select