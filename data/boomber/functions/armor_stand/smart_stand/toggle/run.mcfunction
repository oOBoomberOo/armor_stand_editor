execute if score #bb.ae.part bb.success matches 1..2 run function boomber:armor_stand/smart_stand/toggle/arms
execute if score #bb.ae.part bb.success matches 5 if score #bb.ae.sneaking bb.variable matches 0 run function boomber:armor_stand/smart_stand/toggle/invisible
execute if score #bb.ae.part bb.success matches 5 if score #bb.ae.sneaking bb.variable matches 1.. run function boomber:armor_stand/smart_stand/toggle/body_size
execute if score #bb.ae.part bb.success matches 7 run function boomber:armor_stand/smart_stand/toggle/base_plate