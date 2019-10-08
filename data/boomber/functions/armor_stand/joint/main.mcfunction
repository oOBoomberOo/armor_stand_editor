function boomber:armor_stand/unique_vector/offset

tp @s ~ ~ ~ facing entity @e[tag=boomber.armor_stand.target, limit=1] eyes

execute store result score #bb.ae.rotation.i bb.variable run data get entity @s Rotation[0] 100000
execute store result score #bb.ae.rotation.j bb.variable run data get entity @s Rotation[1] 100000

execute as @s at @s anchored feet positioned ^ ^ ^1 run function boomber:armor_stand/normal_joint/spawn
kill @s