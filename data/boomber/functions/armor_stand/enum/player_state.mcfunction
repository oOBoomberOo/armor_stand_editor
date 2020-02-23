#define entity #bb.ae.player_state.idle
#define entity #bb.ae.player_state.equip
#define entity #bb.ae.player_state.unequip
#define entity #bb.ae.player_state.left_control
#define entity #bb.ae.player_state.right_control
#define entity #bb.ae.player_state.waiting
scoreboard players set #bb.ae.player_state.idle bb.enum 1
scoreboard players set #bb.ae.player_state.equip bb.enum 2
scoreboard players set #bb.ae.player_state.unequip bb.enum 3
scoreboard players set #bb.ae.player_state.left_control bb.enum 4
scoreboard players set #bb.ae.player_state.right_control bb.enum 5
scoreboard players set #bb.ae.player_state.waiting bb.enum 6