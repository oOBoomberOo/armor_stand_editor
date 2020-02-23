# `unequip` when no longer hold editor wand
execute unless data entity @s SelectedItem.tag.ctc{id: 'editor_wand', from: 'boomber:armor_stand'} unless data entity @s Inventory[{Slot: -106b}].tag.ctc{id: 'editor_wand', from: 'boomber:armor_stand'} run function boomber:armor_stand/player/change_state/unequip

# `unequip` when player re-join the game
execute if score @s bb.ae.leave matches 1.. run function boomber:armor_stand/player/change_state/unequip

execute if score @s bb.ae.right matches 1.. run function boomber:armor_stand/player/change_state/right_control