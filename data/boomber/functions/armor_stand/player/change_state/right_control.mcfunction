scoreboard players operation @s bb.ae.state = #player.right_control bb.ae.enum
scoreboard players set @s bb.ae.right 0
function boomber:armor_stand/player/method/find_selector

execute if entity @e[tag=boomber.armor_stand.selector] run function boomber:armor_stand/player/state/right_control/query
execute unless entity @e[tag=boomber.armor_stand.selector] run function boomber:armor_stand/player/change_state/waiting

tag @e[tag=boomber.armor_stand.selector] remove boomber.armor_stand.selector