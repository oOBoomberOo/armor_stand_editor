function boomber:armor_stand/vector/new
execute as @e[tag=boomber.armor_stand.vector, limit=1, sort=nearest] at @s run function boomber:armor_stand/selector/difference/vector

scoreboard players operation rx bb.ae.calc = player.rx bb.ae.var
scoreboard players operation rx bb.ae.calc -= rx bb.ae.result
scoreboard players operation rx bb.ae.calc %= #selector.full_circle bb.ae.const
scoreboard players operation rx bb.ae.calc -= #selector.half_circle bb.ae.const

scoreboard players operation ry bb.ae.calc = player.ry bb.ae.var
scoreboard players operation ry bb.ae.calc += ry bb.ae.result