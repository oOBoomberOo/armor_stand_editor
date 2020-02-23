#define entity #bb.ae.boolean
scoreboard players set #bb.ae.boolean bb.const 2

#define entity #bb.ae.target_uid
#define entity #bb.ae.current_uid
execute unless score #bb.ae.current_uid bb.ae.uid matches -2147483648..2147483647 run scoreboard players set #bb.ae.current_uid bb.ae.uid 0