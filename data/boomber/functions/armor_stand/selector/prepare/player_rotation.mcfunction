#define entity #bb.ae.player.rx
#define entity #bb.ae.player.ry
execute store result score #bb.ae.player.rx bb.variable run data get entity @s Rotation[0] 10000
execute store result score #bb.ae.player.ry bb.variable run data get entity @s Rotation[1] 10000

scoreboard players operation #bb.ae.player.rx bb.variable += #bb.ae.selector.half_circle bb.const
scoreboard players operation #bb.ae.player.rx bb.variable %= #bb.ae.selector.full_circle bb.const