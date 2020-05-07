#define entity player.rx
#define entity player.ry
execute store result score player.rx bb.ae.var run data get entity @s Rotation[0] 10000
execute store result score player.ry bb.ae.var run data get entity @s Rotation[1] 10000

scoreboard players operation player.rx bb.ae.var += #selector.half_circle bb.ae.const
scoreboard players operation player.rx bb.ae.var %= #selector.full_circle bb.ae.const