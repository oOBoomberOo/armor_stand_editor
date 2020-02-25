execute store result score #bb.ae.toggle_state bb.variable run data get entity @s NoGravity
scoreboard players add #bb.ae.toggle_state bb.variable 1
execute store result entity @s NoGravity byte 1 run scoreboard players operation #bb.ae.toggle_state bb.variable %= #bb.ae.binary bb.const

scoreboard players operation #bb.ae.success bb.result = #bb.ae.bool.true bb.enum

execute if score #bb.ae.toggle_state bb.variable = #bb.ae.bool.true bb.enum run title @a[tag=boomber.armor_stand.player] actionbar [{"text": "Gravity: ", "color": "gray"}, {"text": "❌", "color": "red"}]
execute if score #bb.ae.toggle_state bb.variable = #bb.ae.bool.false bb.enum run title @a[tag=boomber.armor_stand.player] actionbar [{"text": "Gravity: ", "color": "gray"}, {"text": "✔", "color": "green"}]