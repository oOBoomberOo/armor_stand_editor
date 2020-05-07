execute unless score @s bb.ae.state = @s bb.ae.state run function boomber:armor_stand/player/change_state/setup

execute if score @s bb.ae.state = #player.idle bb.ae.enum run function boomber:armor_stand/player/state/idle
execute if score @s bb.ae.state = #player.waiting bb.ae.enum run function boomber:armor_stand/player/state/waiting
execute if score @s bb.ae.state = #player.move_joint bb.ae.enum run function boomber:armor_stand/player/state/move_joint