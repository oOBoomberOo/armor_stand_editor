# input:
# - @s = armor stand rotated ~ 0
# - player = { boomber.armor_stand.target }
# - #bb.ae.player.rx & #bb.ae.player.ry

#define entity #bb.ae.selector.state
scoreboard players operation #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum

# TODO
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum positioned ^ ^-1 ^ run function boomber:armor_stand/selector/query/head
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum positioned ^ ^-1 ^ run function boomber:armor_stand/selector/query/body
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum positioned ^ ^-1 ^ run function boomber:armor_stand/selector/query/right_arm
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum positioned ^ ^-1 ^ run function boomber:armor_stand/selector/query/left_arm
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum positioned ^ ^-1 ^ run function boomber:armor_stand/selector/query/right_leg
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum positioned ^ ^-1 ^ run function boomber:armor_stand/selector/query/left_leg
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum positioned ^ ^-1 ^ run function boomber:armor_stand/selector/query/base_plate