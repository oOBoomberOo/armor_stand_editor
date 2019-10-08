execute store result score #bb.ae.body bb.success run data get entity @s Invisible
execute if score #bb.ae.body bb.success matches 0 run data merge entity @s {Invisible: 1b}
execute if score #bb.ae.body bb.success matches 1 run data merge entity @s {Invisible: 0b}