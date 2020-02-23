scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calc dummy
scoreboard objectives add bb.result dummy
scoreboard objectives add bb.enum dummy
scoreboard objectives add bb.const dummy
scoreboard objectives add bb.ae.state dummy
scoreboard objectives add bb.ae.uid dummy
scoreboard objectives add bb.ae.leave minecraft.custom:minecraft.leave_game
scoreboard objectives add bb.ae.right minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add bb.ae.tp.x dummy
scoreboard objectives add bb.ae.tp.y dummy
scoreboard objectives add bb.ae.tp.z dummy

function boomber:armor_stand/const/misc
function boomber:armor_stand/const/selector
function boomber:armor_stand/const/lag_free_teleporter

function boomber:armor_stand/enum/selector
function boomber:armor_stand/enum/player_state

#define tag global.ignore
#define tag global.ignore.pos
#define tag global.ignore.gui
#define tag global.ignore.kill

#define team bb.no_collide
team add bb.no_collide
team modify bb.no_collide collisionRule never