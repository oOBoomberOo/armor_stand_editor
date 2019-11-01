execute store success entity @s NoBasePlate byte 1 unless entity @s[nbt={NoBasePlate: 1b}]

execute if entity @s[nbt={NoBasePlate: 1b}] run advancement grant @p[tag=boomber.armor_stand.target_editor] only boomber:armor_stand/story/more_like_human