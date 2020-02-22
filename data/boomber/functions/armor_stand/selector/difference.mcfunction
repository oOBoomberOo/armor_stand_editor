function boomber:armor_stand/vector/new
execute as @e[tag=boomber.armor_stand.vector] at @s run function boomber:armor_stand/selector/difference/vector

scoreboard players operation #bb.ae.rx bb.calc = #bb.ae.player.rx bb.variable
scoreboard players operation #bb.ae.rx bb.calc += #bb.ae.rx bb.result

scoreboard players operation #bb.ae.ry bb.calc = #bb.ae.player.ry bb.variable
scoreboard players operation #bb.ae.ry bb.calc += #bb.ae.ry bb.result