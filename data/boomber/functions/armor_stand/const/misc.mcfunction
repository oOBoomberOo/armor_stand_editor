#define entity #bb.ae.binary
scoreboard players set #bb.ae.binary bb.const 2

#define entity #bb.ae.target_uid
#define entity #bb.ae.current_uid
execute unless score #bb.ae.current_uid bb.ae.uid matches -2147483648..2147483647 run scoreboard players set #bb.ae.current_uid bb.ae.uid 0

#define entity #bb.ae.negative
scoreboard players set #bb.ae.negative bb.const -1