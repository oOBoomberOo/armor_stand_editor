tp @s ~ ~ ~ facing entity @e[tag=boomber.armor_stand.target, limit=1] eyes

execute store result score #bb.ae.rotation.x bb.calculation run data get entity @s Rotation[0] 100000
execute store result score #bb.ae.rotation.y bb.calculation run data get entity @s Rotation[1] 100000

kill @s