#define entity raycast
scoreboard players operation raycast bb.ae.var = #bool.false bb.ae.enum
execute at @s anchored eyes positioned ^ ^ ^0.1 run function boomber:armor_stand/player/method/find_selector/raycast

scoreboard players reset raycast bb.ae.var