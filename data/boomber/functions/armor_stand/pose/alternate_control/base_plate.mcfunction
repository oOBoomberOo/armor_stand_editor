execute store result score toggle_state bb.ae.var run data get entity @s NoGravity
scoreboard players add toggle_state bb.ae.var 1
execute store result entity @s NoGravity byte 1 run scoreboard players operation toggle_state bb.ae.var %= #binary bb.ae.const

scoreboard players operation success bb.ae.result = #bool.true bb.ae.enum

execute if score toggle_state bb.ae.var = #bool.true bb.ae.enum run title @a[tag=boomber.armor_stand.player] actionbar [{"text": "Gravity: ", "color": "gray"}, {"text": "❌", "color": "red"}]
execute if score toggle_state bb.ae.var = #bool.false bb.ae.enum run title @a[tag=boomber.armor_stand.player] actionbar [{"text": "Gravity: ", "color": "gray"}, {"text": "✔", "color": "green"}]