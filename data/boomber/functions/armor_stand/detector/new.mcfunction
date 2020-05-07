# input:
# - @s = player

#define tag boomber.armor_stand.detector
#define tag boomber.armor_stand.temporary
summon villager ~ ~ ~ {CanPickUpLoot: false, Gossips: [], VillagerData: {profession: "minecraft:nitwit"}, Team: "bb.no_collide", NoAI: true, NoGravity: true, Silent: true, Tags: ["boomber.armor_stand.detector", "boomber.armor_stand.temporary", "global.ignore", "global.ignore.gui", "global.ignore.kill", "global.ignore.pos"], Offers: { Recipes: [] }, PortalCooldown: 2147483647, ActiveEffects: [{Id: 14b, Ambient: true, Amplifier: 0b, Duration: 2147483647, ShowParticles: false}, {Id: 11b, Ambient: true, Amplifier: 127b, Duration: 2147483647, ShowParticles: false}]}

function boomber:armor_stand/player/method/get_uuid
execute as @e[tag=boomber.armor_stand.temporary] run function boomber:armor_stand/detector/new/builder