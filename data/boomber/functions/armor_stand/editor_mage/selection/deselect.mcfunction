scoreboard players set @s bb.ae.select 0
tag @s remove boomber.armor_stand.editing
execute as @e[type=armor_stand, tag=boomber.armor_stand.editing] run function boomber:armor_stand/smart_stand/deselect