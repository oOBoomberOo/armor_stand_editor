# input:
# - @s = armor stand rotated ~ 0
# - player = { boomber.armor_stand.target }
# - #bb.ae.player.rx & #bb.ae.player.ry

#define entity #bb.ae.selector.state
scoreboard players operation #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum

execute if entity @s[nbt={Small: 0b}] run function boomber:armor_stand/selector/size/big
execute if entity @s[nbt={Small: 1b}] run function boomber:armor_stand/selector/size/small

execute at @p[tag=boomber.armor_stand.target] as @e[tag=boomber.armor_stand.vector, limit=1, sort=nearest] run scoreboard players operation #bb.ae.selector.state bb.variable = @s bb.ae.state
function boomber:armor_stand/vector/clear