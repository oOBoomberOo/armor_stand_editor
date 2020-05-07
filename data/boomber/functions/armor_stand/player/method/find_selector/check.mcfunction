function boomber:armor_stand/vector/new
execute as @e[tag=boomber.armor_stand.vector] run function boomber:armor_stand/vector/get/location

#define entity pos.x
execute store result score pos.x bb.ae.calc run data get entity @s Pos[0] 1000
#define entity pos.y
execute store result score pos.y bb.ae.calc run data get entity @s Pos[1] 1000
#define entity pos.z
execute store result score pos.z bb.ae.calc run data get entity @s Pos[2] 1000

scoreboard players operation vec.x bb.ae.result -= pos.x bb.ae.calc
scoreboard players operation vec.y bb.ae.result -= pos.y bb.ae.calc
scoreboard players operation vec.z bb.ae.result -= pos.z bb.ae.calc

execute if score raycast bb.ae.var = #bool.false bb.ae.enum if score #min_width bb.ae.const < vec.x bb.ae.result if score vec.x bb.ae.result < #max_width bb.ae.const if score #min_height bb.ae.const < vec.y bb.ae.result if score vec.y bb.ae.result < #max_height bb.ae.const if score #min_width bb.ae.const < vec.z bb.ae.result if score vec.z bb.ae.result < #max_width bb.ae.const run function boomber:armor_stand/player/method/validate_selector

function boomber:armor_stand/vector/clear
scoreboard players reset pos.x bb.ae.calc
scoreboard players reset pos.y bb.ae.calc
scoreboard players reset pos.z bb.ae.calc
scoreboard players reset vec.x bb.ae.result
scoreboard players reset vec.y bb.ae.result
scoreboard players reset vec.z bb.ae.result