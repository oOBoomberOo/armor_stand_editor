execute store result score #bb.ae.toggle_state bb.variable run data get entity @s ShowArms
scoreboard players add #bb.ae.toggle_state bb.variable 1
execute store result entity @s ShowArms byte 1 run scoreboard players operation #bb.ae.toggle_state bb.variable %= #bb.ae.boolean bb.const