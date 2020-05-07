#define entity pre.x
scoreboard players operation pre.x bb.ae.calc = @s bb.ae.tp.x
#define entity pre.y
scoreboard players operation pre.y bb.ae.calc = @s bb.ae.tp.y
#define entity pre.z
scoreboard players operation pre.z bb.ae.calc = @s bb.ae.tp.z

tp @s ~ ~ ~ ~ ~
function boomber:armor_stand/teleporter/update_coord

#define entity cur.x
scoreboard players operation cur.x bb.ae.calc = @s bb.ae.tp.x
#define entity cur.y
scoreboard players operation cur.y bb.ae.calc = @s bb.ae.tp.y
#define entity cur.z
scoreboard players operation cur.z bb.ae.calc = @s bb.ae.tp.z

#define entity Δx
scoreboard players operation Δx bb.ae.calc = cur.x bb.ae.calc
scoreboard players operation Δx bb.ae.calc -= pre.x bb.ae.calc
scoreboard players operation Δx bb.ae.calc *= #lftp.delta bb.ae.const
#define entity Δy
scoreboard players operation Δy bb.ae.calc = cur.y bb.ae.calc
scoreboard players operation Δy bb.ae.calc -= pre.y bb.ae.calc
scoreboard players operation Δy bb.ae.calc *= #lftp.delta bb.ae.const
#define entity Δz
scoreboard players operation Δz bb.ae.calc = cur.z bb.ae.calc
scoreboard players operation Δz bb.ae.calc -= pre.z bb.ae.calc
scoreboard players operation Δz bb.ae.calc *= #lftp.delta bb.ae.const

execute store result entity @s Pos[0] double 0.001 run scoreboard players operation cur.x bb.ae.calc += Δx bb.ae.calc
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation cur.y bb.ae.calc += Δy bb.ae.calc
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation cur.z bb.ae.calc += Δz bb.ae.calc

scoreboard players reset pre.x bb.ae.calc
scoreboard players reset pre.y bb.ae.calc
scoreboard players reset pre.z bb.ae.calc
scoreboard players reset cur.x bb.ae.calc
scoreboard players reset cur.y bb.ae.calc
scoreboard players reset cur.z bb.ae.calc
scoreboard players reset Δx bb.ae.calc
scoreboard players reset Δy bb.ae.calc
scoreboard players reset Δz bb.ae.calc