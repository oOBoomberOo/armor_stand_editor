tp @s ~ ~-1000 ~
data merge entity @s {Health: 0.0f, DeathTime: 19s}

execute as @e[tag=boomber.armor_stand.posing] if score @s bb.ae.uid1 = #target_uid bb.ae.uid1 if score @s bb.ae.uid2 = #target_uid bb.ae.uid2 if score @s bb.ae.uid3 = #target_uid bb.ae.uid3 if score @s bb.ae.uid4 = #target_uid bb.ae.uid4 run function boomber:armor_stand/pose/method/cancel