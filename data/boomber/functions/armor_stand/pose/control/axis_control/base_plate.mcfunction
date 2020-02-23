execute at @e[tag=boomber.armor_stand.pointer] align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~

execute store result score @s bb.ae.tp.x run data get entity @s Pos[0] 1000
execute store result score @s bb.ae.tp.y run data get entity @s Pos[1] 1000
execute store result score @s bb.ae.tp.z run data get entity @s Pos[2] 1000