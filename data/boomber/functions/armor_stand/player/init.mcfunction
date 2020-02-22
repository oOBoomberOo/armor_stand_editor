scoreboard players operation @s bb.ae.uid = #bb.ae.current_uid bb.ae.uid
scoreboard players add #bb.ae.current_uid bb.ae.uid 1

scoreboard players operation @s bb.ae.state = #bb.ae.player_state.idle bb.enum

#define tag boomber.armor_stand.player.init
tag @s add boomber.armor_stand.player.init