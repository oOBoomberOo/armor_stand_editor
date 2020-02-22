tp @s ~ ~ ~

#define entity #bb.ae.cur.x
#define entity #bb.ae.cur.y
#define entity #bb.ae.cur.z
#define entity #bb.ae.pre.x
#define entity #bb.ae.pre.y
#define entity #bb.ae.pre.z

scoreboard players operation #bb.ae.pre.x bb.calc = @s bb.ae.tp.x
scoreboard players operation #bb.ae.pre.y bb.calc = @s bb.ae.tp.y
scoreboard players operation #bb.ae.pre.z bb.calc = @s bb.ae.tp.z

execute store result score #bb.ae.cur.x bb.calc run data get entity @s Pos[0] 1000
execute store result score #bb.ae.cur.y bb.calc run data get entity @s Pos[1] 1000
execute store result score #bb.ae.cur.z bb.calc run data get entity @s Pos[2] 1000
scoreboard players operation @s bb.ae.tp.x = #bb.ae.cur.x bb.calc
scoreboard players operation @s bb.ae.tp.y = #bb.ae.cur.y bb.calc
scoreboard players operation @s bb.ae.tp.z = #bb.ae.cur.z bb.calc

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

execute store result entity @s Pos[0] double 0.001 run scoreboard players get #bb.ae.Δx bb.calc
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #bb.ae.Δy bb.calc
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #bb.ae.Δz bb.calc