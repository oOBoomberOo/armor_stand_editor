#define entity #bb.ae.player.rx
#define entity #bb.ae.player.ry
execute store result score #bb.ae.player.rx bb.variable run data get entity @s Rotation[0] 1000
execute store result score #bb.ae.player.ry bb.variable run data get entity @s Rotation[1] 1000