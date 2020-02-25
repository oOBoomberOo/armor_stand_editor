#define entity #bb.ae.raycast
scoreboard players operation #bb.ae.raycast bb.variable = #bb.ae.bool.false bb.enum
execute at @s anchored eyes positioned ^ ^ ^0.1 run function boomber:armor_stand/player/method/find_selector/raycast

scoreboard players reset #bb.ae.raycast bb.variable