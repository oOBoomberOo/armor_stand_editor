#define tag boomber.armor_stand.target
#define tag boomber.armor_stand.selector
tag @e[type=armor_stand, limit=1, sort=nearest] add boomber.armor_stand.selector
tag @s add boomber.armor_stand.target

function boomber:armor_stand/selector/prepare/player_rotation
execute as @e[tag=boomber.armor_stand.selector] at @s rotated ~ 0 run function boomber:armor_stand/selector/query

# title @s actionbar [{"text": "State: ", "color": "gray"}, {"score": {"name": "#bb.ae.selector.state", "objective": "bb.variable"}, "color": "green"}]

execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.head bb.enum run title @s actionbar [{"text": "Part: ", "color": "gray"}, {"text": "Head", "color": "green"}]
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.body bb.enum run title @s actionbar [{"text": "Part: ", "color": "gray"}, {"text": "Body", "color": "green"}]
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.right_arm bb.enum run title @s actionbar [{"text": "Part: ", "color": "gray"}, {"text": "Right Arm", "color": "green"}]
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.left_arm bb.enum run title @s actionbar [{"text": "Part: ", "color": "gray"}, {"text": "Left Arm", "color": "green"}]
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.right_leg bb.enum run title @s actionbar [{"text": "Part: ", "color": "gray"}, {"text": "Right Leg", "color": "green"}]
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.left_leg bb.enum run title @s actionbar [{"text": "Part: ", "color": "gray"}, {"text": "Left Leg", "color": "green"}]
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.base_plate bb.enum run title @s actionbar [{"text": "Part: ", "color": "gray"}, {"text": "Base Plate", "color": "green"}]
execute if score #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum run title @s actionbar [{"text": "Part: ", "color": "gray"}, {"text": "Empty", "color": "red"}]

tag @e[tag=boomber.armor_stand.selector] remove boomber.armor_stand.selector
tag @s remove boomber.armor_stand.target