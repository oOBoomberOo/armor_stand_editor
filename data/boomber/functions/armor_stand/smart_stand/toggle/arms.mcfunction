execute store result score #bb.ae.arms bb.success run data get entity @s ShowArms
execute if score #bb.ae.arms bb.success matches 0 run data merge entity @s {ShowArms: 1b}
execute if score #bb.ae.arms bb.success matches 1 run data merge entity @s {ShowArms: 0b}