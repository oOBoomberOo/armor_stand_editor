# input:
# - @s = player

#define tag boomber.armor_stand.detector
#define tag boomber.armor_stand.temporary
summon villager ~ ~ ~ {Team: 'bb.no_collide', NoAI: true, NoGravity: true, Silent: true, Tags: ['boomber.armor_stand.detector', 'boomber.armor_stand.temporary'], Offers: { Recipes: [] }, PortalCooldown: 2147483647, ActiveEffects: [{Id: 14b, Ambient: true, Amplifier: 0b, Duration: 2147483647, ShowParticles: false}, {Id: 11b, Ambient: true, Amplifier: 127b, Duration: 2147483647, ShowParticles: false}]}

scoreboard players operation @e[tag=boomber.armor_stand.temporary] bb.ae.uid = @s bb.ae.uid
execute as @e[tag=boomber.armor_stand.temporary] run function boomber:armor_stand/teleporter/update_coord

tag @e[tag=boomber.armor_stand.temporary] remove boomber.armor_stand.temporary