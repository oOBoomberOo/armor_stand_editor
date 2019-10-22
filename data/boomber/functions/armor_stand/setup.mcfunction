scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.success dummy
scoreboard objectives add bb.config dummy

scoreboard objectives add bb.ae.uid dummy
scoreboard objectives add bb.ae.select minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add bb.ae.alt minecraft.custom:minecraft.sneak_time

scoreboard players set #-1 bb.variable -1

scoreboard players set #bb.ae.model_accuracy bb.config 100000
scoreboard players set #quater_circle bb.config 90
scoreboard players set #half_circle bb.config 180

scoreboard players operation #quater_circle bb.config *= #bb.ae.model_accuracy bb.config
scoreboard players operation #half_circle bb.config *= #bb.ae.model_accuracy bb.config

execute unless score #bb.ae.current_uid bb.ae.uid matches -2147483648..2147483647 run scoreboard players set #bb.ae.current_uid bb.ae.uid 0

team add bb.ae.no_collide
team modify bb.ae.no_collide collisionRule never