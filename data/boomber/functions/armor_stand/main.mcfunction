execute if score #bb.ae.current_uid bb.ae.uid matches -2147483648..2147483647 as @a[tag=!global.ignore, tag=!boomber.armor_stand.player.init] at @s run function boomber:armor_stand/player/init
execute as @a[tag=!global.ignore, tag=boomber.armor_stand.player.init] at @s run function boomber:armor_stand/player/main

execute as @e[tag=boomber.armor_stand.detector] at @s run function boomber:armor_stand/detector/main