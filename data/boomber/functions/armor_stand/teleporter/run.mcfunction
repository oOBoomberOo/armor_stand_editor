#define entity #bb.ae.cur.x
#define entity #bb.ae.cur.y
#define entity #bb.ae.cur.z
#define entity #bb.ae.pre.x
#define entity #bb.ae.pre.y
#define entity #bb.ae.pre.z

scoreboard players operation #bb.ae.pre.x bb.calc = @s bb.ae.tp.x
scoreboard players operation #bb.ae.pre.y bb.calc = @s bb.ae.tp.y
scoreboard players operation #bb.ae.pre.z bb.calc = @s bb.ae.tp.z

tp @s ~ ~ ~
function boomber:armor_stand/detector/update_coord

scoreboard players operation #bb.ae.cur.x bb.calc = @s bb.ae.tp.x
scoreboard players operation #bb.ae.cur.y bb.calc = @s bb.ae.tp.y
scoreboard players operation #bb.ae.cur.z bb.calc = @s bb.ae.tp.z

#define entity #bb.ae.Δx
#define entity #bb.ae.Δy
#define entity #bb.ae.Δz

scoreboard players operation #bb.ae.Δx bb.calc = #bb.ae.cur.x bb.calc
scoreboard players operation #bb.ae.Δx bb.calc -= #bb.ae.pre.x bb.calc
scoreboard players operation #bb.ae.Δx bb.calc *= #bb.ae.lftp.delta bb.const

scoreboard players operation #bb.ae.Δy bb.calc = #bb.ae.cur.y bb.calc
scoreboard players operation #bb.ae.Δy bb.calc -= #bb.ae.pre.y bb.calc
scoreboard players operation #bb.ae.Δy bb.calc *= #bb.ae.lftp.delta bb.const

scoreboard players operation #bb.ae.Δz bb.calc = #bb.ae.cur.z bb.calc
scoreboard players operation #bb.ae.Δz bb.calc -= #bb.ae.pre.z bb.calc
scoreboard players operation #bb.ae.Δz bb.calc *= #bb.ae.lftp.delta bb.const

execute store result entity @s Pos[0] double 0.001 run scoreboard players operation #bb.ae.cur.x bb.calc += #bb.ae.Δx bb.calc
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation #bb.ae.cur.y bb.calc += #bb.ae.Δy bb.calc
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation #bb.ae.cur.z bb.calc += #bb.ae.Δz bb.calc