#define entity #bb.ae.rx 'x' rotation of vector
#define entity #bb.ae.ry 'y' rotation of vector
execute store result score #bb.ae.rx bb.result run data get entity @s Rotation[0] 1000
execute store result score #bb.ae.ry bb.result run data get entity @s Rotation[1] 1000