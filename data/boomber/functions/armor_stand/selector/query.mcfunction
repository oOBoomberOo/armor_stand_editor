# input:
# - @s = armor stand rotated ~ 0
# - player = { boomber.armor_stand.target }
# - player.rx & player.ry

#define entity selector.state
scoreboard players operation selector.state bb.ae.var = #selector.idle bb.ae.enum

execute if entity @s[nbt={Small: 0b}] run function boomber:armor_stand/selector/size/big
execute if entity @s[nbt={Small: 1b}] run function boomber:armor_stand/selector/size/small

execute at @p[tag=boomber.armor_stand.target] as @e[tag=boomber.armor_stand.vector, limit=1, sort=nearest] run scoreboard players operation selector.state bb.ae.var = @s bb.ae.state
function boomber:armor_stand/vector/clear

scoreboard players reset player.rx bb.ae.var
scoreboard players reset player.ry bb.ae.var