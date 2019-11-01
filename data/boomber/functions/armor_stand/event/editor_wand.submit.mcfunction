execute as @e[type=villager, tag=boomber.armor_stand.editor_node] run data merge entity @s {Health: 20.0f}
execute as @s at @s run function boomber:armor_stand/editor_mage/submit/attempt_submit

advancement grant @s only boomber:armor_stand/story/editor_wand
advancement revoke @s only boomber:armor_stand/event/editor_wand.submit