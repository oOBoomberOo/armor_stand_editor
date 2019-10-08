execute as @a[tag=!global.ignore, tag=!boomber.armor_stand.init] run function boomber:armor_stand/player/init
execute as @a[tag=boomber.armor_stand.init] at @s run function boomber:armor_stand/player/main

execute as @e[type=armor_stand, tag=boomber.armor_stand.editing] at @s run function boomber:armor_stand/smart_stand/main