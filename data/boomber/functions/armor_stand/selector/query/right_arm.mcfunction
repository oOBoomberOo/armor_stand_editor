function boomber:armor_stand/selector/difference

#define entity rotation_threshold
#define entity show_arms
#define entity invisible
scoreboard players operation rotation_threshold bb.ae.result = #bool.false bb.ae.enum
scoreboard players operation invisible bb.ae.result = #bool.false bb.ae.enum

execute if score rx bb.ae.calc > #selector.min_difference bb.ae.const if score rx bb.ae.calc < #selector.max_difference bb.ae.const if score ry bb.ae.calc > #selector.min_difference bb.ae.const if score ry bb.ae.calc < #selector.max_difference bb.ae.const run scoreboard players operation rotation_threshold bb.ae.result = #bool.true bb.ae.enum
execute if entity @s[nbt={Invisible: 1b}] run scoreboard players operation invisible bb.ae.result = #bool.true bb.ae.enum

execute if score rotation_threshold bb.ae.result = #bool.true bb.ae.enum if score invisible bb.ae.result = #bool.false bb.ae.enum run scoreboard players operation @e[tag=boomber.armor_stand.vector, limit=1, sort=nearest] bb.ae.state = #selector.right_arm bb.ae.enum

execute as @e[tag=boomber.armor_stand.vector, limit=1, sort=nearest] unless score @s bb.ae.state matches -2147483648..2147483647 run kill @s

scoreboard players reset rotation_threshold bb.ae.result
scoreboard players reset invisible bb.ae.result
scoreboard players reset show_arms bb.ae.result
scoreboard players reset ae.rx bb.ae.calc
scoreboard players reset ae.ry bb.ae.calc