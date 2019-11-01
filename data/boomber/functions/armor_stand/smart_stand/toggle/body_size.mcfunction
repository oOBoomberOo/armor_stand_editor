execute store success entity @s Small byte 1 unless entity @s[nbt={Small: 1b}]

execute if entity @s[nbt={Small: 1b}] run advancement grant @p[tag=boomber.armor_stand.target_editor] only boomber:armor_stand/story/smoll_armor_stand