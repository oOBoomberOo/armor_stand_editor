execute store result score #bb.ae.body_size bb.success run data get entity @s Small
execute if score #bb.ae.body_size bb.success matches 0 run data merge entity @s {Small: 1b}
execute if score #bb.ae.body_size bb.success matches 1 run data merge entity @s {Small: 0b}