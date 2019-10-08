execute store result score #bb.ae.base_plate bb.success run data get entity @s NoBasePlate
execute if score #bb.ae.base_plate bb.success matches 0 run data merge entity @s {NoBasePlate: 1b}
execute if score #bb.ae.base_plate bb.success matches 1 run data merge entity @s {NoBasePlate: 0b}