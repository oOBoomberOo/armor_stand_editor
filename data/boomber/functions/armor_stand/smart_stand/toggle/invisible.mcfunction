execute store success entity @s Invisible byte 1 unless entity @s[nbt={Invisible: 1b}]

execute if entity @s[nbt={Invisible: 1b}] run advancement grant @p[tag=boomber.armor_stand.target_editor] only boomber:armor_stand/story/spooky