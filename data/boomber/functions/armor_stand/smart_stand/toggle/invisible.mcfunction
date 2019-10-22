execute store result score #bb.ae.invisible bb.success run data get entity @s Invisible
execute if score #bb.ae.invisible bb.success matches 0 run data merge entity @s {Invisible: 1b}
execute if score #bb.ae.invisible bb.success matches 1 run data merge entity @s {Invisible: 0b}