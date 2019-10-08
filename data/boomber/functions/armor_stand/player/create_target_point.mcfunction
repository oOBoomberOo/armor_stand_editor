summon area_effect_cloud ~ ~ ~ {Tags: ['boomber.armor_stand.target'], Age: 0, Duration: 1}

data modify entity @e[type=area_effect_cloud, tag=boomber.armor_stand.target, limit=1] Rotation set from entity @s Rotation