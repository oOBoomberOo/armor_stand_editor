function boomber:armor_stand/joint/spawn

execute store result score #bb.ae.orientation.x bb.calculation run data get entity @s Rotation[0] 100000
execute store result score #bb.ae.orientation.y bb.calculation run data get entity @s Rotation[1] 100000

scoreboard players operation #bb.ae.orientation.x bb.calculation %= #full_circle bb.config

scoreboard players operation #bb.ae.direction bb.calculation = #bb.ae.orientation.x bb.calculation
scoreboard players operation #bb.ae.direction bb.calculation -= #bb.ae.rotation.x bb.calculation

execute if score #bb.ae.direction bb.calculation matches -9000000..9000000 run scoreboard players set #bb.ae.direction bb.calculation 1
execute if score #bb.ae.direction bb.calculation matches 27000000..360000000 run scoreboard players set #bb.ae.direction bb.calculation 1
execute unless score #bb.ae.direction bb.calculation matches -9000000..9000000 unless score #bb.ae.direction bb.calculation matches 27000000..360000000 run scoreboard players set #bb.ae.direction bb.calculation -1

scoreboard players operation #bb.ae.result.rot.x bb.calculation = #bb.ae.rotation.x bb.calculation
scoreboard players operation #bb.ae.result.rot.x bb.calculation -= #bb.ae.orientation.x bb.calculation
scoreboard players operation #bb.ae.result.rot.x bb.calculation += #quarter_circle bb.config
scoreboard players operation #bb.ae.result.rot.x bb.calculation %= #half_circle bb.config
scoreboard players operation #bb.ae.result.rot.x bb.calculation -= #quarter_circle bb.config

scoreboard players operation #bb.ae.result.rot.y bb.calculation = #bb.ae.rotation.y bb.calculation
scoreboard players operation #bb.ae.result.rot.y bb.calculation -= #bb.ae.orientation.y bb.calculation
scoreboard players operation #bb.ae.result.rot.y bb.calculation -= #quarter_circle bb.config
scoreboard players operation #bb.ae.result.rot.y bb.calculation *= #bb.ae.direction bb.calculation