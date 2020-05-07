execute as @e[type=armor_stand, distance=..2] run function boomber:armor_stand/player/method/find_selector/check

execute as @s[distance=..5.5] if score raycast bb.ae.var = #bool.false bb.ae.enum positioned ^ ^ ^0.3 run function boomber:armor_stand/player/method/find_selector/raycast