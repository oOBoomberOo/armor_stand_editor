execute store success entity @s ShowArms byte 1 unless entity @s[nbt={ShowArms: 1b}]

execute if entity @s[nbt={ShowArms: 1b}] run advancement grant @p[tag=boomber.armor_stand.target_editor] only boomber:armor_stand/story/armor_stand_with_arm