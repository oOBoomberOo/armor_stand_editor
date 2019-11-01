tag @s add boomber.armor_stand.target_editor

scoreboard players set #bb.ae.raycast bb.success 0
execute as @s at @s anchored eyes positioned ^ ^ ^0.1 anchored feet run function boomber:armor_stand/editor_mage/submit/raycast

tag @s remove boomber.armor_stand.target_editor