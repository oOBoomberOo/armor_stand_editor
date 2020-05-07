execute store result score @s bb.ae.uid1 run data get entity @s UUID[0]
execute store result score @s bb.ae.uid2 run data get entity @s UUID[1]
execute store result score @s bb.ae.uid3 run data get entity @s UUID[2]
execute store result score @s bb.ae.uid4 run data get entity @s UUID[3]

scoreboard players operation @s bb.ae.state = #player.idle bb.ae.enum