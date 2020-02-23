scoreboard players operation @s bb.ae.state = #bb.ae.player_state.right_control bb.enum
scoreboard players set @s bb.ae.right 0

tag @e[type=armor_stand, tag=!global.ignore, tag=!global.ignore.pos, tag=!boomber.armor_stand.posing, limit=1, sort=nearest, distance=..3] add boomber.armor_stand.selector

execute if entity @e[tag=boomber.armor_stand.selector] run function boomber:armor_stand/player/state/right_control/query
execute unless entity @e[tag=boomber.armor_stand.selector] run function boomber:armor_stand/player/change_state/waiting

tag @e[tag=boomber.armor_stand.selector] remove boomber.armor_stand.selector