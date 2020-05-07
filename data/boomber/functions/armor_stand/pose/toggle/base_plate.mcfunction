execute store result score toggle_state bb.ae.var run data get entity @s NoBasePlate
scoreboard players add toggle_state bb.ae.var 1
execute store result entity @s NoBasePlate byte 1 run scoreboard players operation toggle_state bb.ae.var %= #binary bb.ae.const

execute if score toggle_state bb.ae.var = #bool.true bb.ae.enum run title @a[tag=boomber.armor_stand.player] actionbar [{"text": "Base Plate: ", "color": "gray"}, {"text": "❌", "color": "red"}]
execute if score toggle_state bb.ae.var = #bool.false bb.ae.enum run title @a[tag=boomber.armor_stand.player] actionbar [{"text": "Base Plate: ", "color": "gray"}, {"text": "✔", "color": "green"}]