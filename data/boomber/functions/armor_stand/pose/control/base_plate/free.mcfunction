execute at @e[tag=boomber.armor_stand.pointer] facing entity @p[tag=boomber.armor_stand.player] eyes run function boomber:armor_stand/teleporter/run

# Other control become wonky if Rotation[1] is not 0.0f
data modify entity @s Rotation[1] set value 0.0f