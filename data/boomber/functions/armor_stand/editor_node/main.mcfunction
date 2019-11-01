scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
execute as @a[tag=boomber.armor_stand.editor_mage] if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid run tag @s add boomber.armor_stand.target_player

execute unless entity @a[tag=boomber.armor_stand.target_player] run function boomber:armor_stand/editor_node/remove

tag @a remove boomber.armor_stand.target_player