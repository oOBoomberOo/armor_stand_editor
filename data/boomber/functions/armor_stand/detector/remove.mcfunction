tp @s ~ ~-1000 ~
data merge entity @s {Health: 0.0f, DeathTime: 19s}

execute as @e[tag=boomber.armor_stand.posing] if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid run function boomber:armor_stand/pose/method/cancel