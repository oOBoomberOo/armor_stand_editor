scoreboard players operation @s bb.ae.state = #player.left_control bb.ae.enum
function boomber:armor_stand/player/method/find_selector

execute if entity @e[tag=boomber.armor_stand.selector] run function boomber:armor_stand/player/state/left_control/query

tag @e[tag=boomber.armor_stand.selector] remove boomber.armor_stand.selector
function boomber:armor_stand/player/change_state/waiting