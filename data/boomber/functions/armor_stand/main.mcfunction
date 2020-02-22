execute as @a[tag=!global.ignore, tag=!boomber.armor_stand.player.init] at @s run function boomber:armor_stand/player/init
execute as @a[tag=!global.ignore, tag=boomber.armor_stand.player.init] at @s run function boomber:armor_stand/player/main

execute as @e[tag=boomber.armor_stand.detector] at @s run function boomber:armor_stand/detector/main