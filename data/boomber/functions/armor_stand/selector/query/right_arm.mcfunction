function boomber:armor_stand/selector/difference

#define entity #bb.ae.rotation_threshold
#define entity #bb.ae.show_arms
#define entity #bb.ae.invisible
scoreboard players operation #bb.ae.rotation_threshold bb.result = #bb.ae.bool.false bb.enum
scoreboard players operation #bb.ae.invisible bb.result = #bb.ae.bool.false bb.enum

execute if score #bb.ae.rx bb.calc > #bb.ae.selector.min_difference bb.const if score #bb.ae.rx bb.calc < #bb.ae.selector.max_difference bb.const if score #bb.ae.ry bb.calc > #bb.ae.selector.min_difference bb.const if score #bb.ae.ry bb.calc < #bb.ae.selector.max_difference bb.const run scoreboard players operation #bb.ae.rotation_threshold bb.result = #bb.ae.bool.true bb.enum
execute if entity @s[nbt={Invisible: 1b}] run scoreboard players operation #bb.ae.invisible bb.result = #bb.ae.bool.true bb.enum

execute if score #bb.ae.rotation_threshold bb.result = #bb.ae.bool.true bb.enum if score #bb.ae.invisible bb.result = #bb.ae.bool.false bb.enum run scoreboard players operation @e[tag=boomber.armor_stand.vector, limit=1, sort=nearest] bb.ae.state = #bb.ae.selector.right_arm bb.enum

execute as @e[tag=boomber.armor_stand.vector, limit=1, sort=nearest] unless score @s bb.ae.state matches -2147483648..2147483647 run kill @s

scoreboard players reset #bb.ae.rotation_threshold bb.result
scoreboard players reset #bb.ae.invisible bb.result
scoreboard players reset #bb.ae.show_arms bb.result
scoreboard players reset #bb.ae.ae.rx bb.calc
scoreboard players reset #bb.ae.ae.ry bb.calc