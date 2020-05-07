# input:
# - ∷ boomber:database/index_input
# - ∷ boomber:database/list
# output:
# - ∷ boomber:database/index_output

data remove storage boomber:database/index_output output
data merge storage boomber:database/index_output { output: [], leftover: [], output_buffer: [] }

execute store result score #bb.db.b0 bb.ae.calc run data get storage boomber:database/index_input id.b0
execute store result score #bb.db.b1 bb.ae.calc run data get storage boomber:database/index_input id.b1
execute store result score #bb.db.b2 bb.ae.calc run data get storage boomber:database/index_input id.b2
execute store result score #bb.db.b3 bb.ae.calc run data get storage boomber:database/index_input id.b3
execute store result score #bb.db.b4 bb.ae.calc run data get storage boomber:database/index_input id.b4
execute store result score #bb.db.b5 bb.ae.calc run data get storage boomber:database/index_input id.b5
execute store result score #bb.db.b6 bb.ae.calc run data get storage boomber:database/index_input id.b6
execute store result score #bb.db.b7 bb.ae.calc run data get storage boomber:database/index_input id.b7
execute store result score #bb.db.b8 bb.ae.calc run data get storage boomber:database/index_input id.b8
execute store result score #bb.db.b9 bb.ae.calc run data get storage boomber:database/index_input id.b9
execute store result score #bb.db.b10 bb.ae.calc run data get storage boomber:database/index_input id.b10
execute store result score #bb.db.b11 bb.ae.calc run data get storage boomber:database/index_input id.b11
execute store result score #bb.db.b12 bb.ae.calc run data get storage boomber:database/index_input id.b12
execute store result score #bb.db.b13 bb.ae.calc run data get storage boomber:database/index_input id.b13
execute store result score #bb.db.b14 bb.ae.calc run data get storage boomber:database/index_input id.b14
execute store result score #bb.db.b15 bb.ae.calc run data get storage boomber:database/index_input id.b15

#define storage boomber:database/index_input
#define storage boomber:database/list
#define storage boomber:database/index_output
execute if score #bb.db.b0 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/list database[{id: {b0: 0b}}]
execute if score #bb.db.b0 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/list database[{id: {b0: 1b}}]
execute if score #bb.db.b0 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/list database[{id: {b0: 1b}}]
execute if score #bb.db.b0 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/list database[{id: {b0: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b1 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b1: 0b}}]
execute if score #bb.db.b1 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b1: 1b}}]
execute if score #bb.db.b1 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b1: 1b}}]
execute if score #bb.db.b1 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b1: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b2 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b2: 0b}}]
execute if score #bb.db.b2 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b2: 1b}}]
execute if score #bb.db.b2 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b2: 1b}}]
execute if score #bb.db.b2 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b2: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b3 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b3: 0b}}]
execute if score #bb.db.b3 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b3: 1b}}]
execute if score #bb.db.b3 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b3: 1b}}]
execute if score #bb.db.b3 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b3: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b4 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b4: 0b}}]
execute if score #bb.db.b4 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b4: 1b}}]
execute if score #bb.db.b4 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b4: 1b}}]
execute if score #bb.db.b4 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b4: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b5 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b5: 0b}}]
execute if score #bb.db.b5 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b5: 1b}}]
execute if score #bb.db.b5 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b5: 1b}}]
execute if score #bb.db.b5 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b5: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b6 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b6: 0b}}]
execute if score #bb.db.b6 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b6: 1b}}]
execute if score #bb.db.b6 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b6: 1b}}]
execute if score #bb.db.b6 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b6: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b7 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b7: 0b}}]
execute if score #bb.db.b7 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b7: 1b}}]
execute if score #bb.db.b7 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b7: 1b}}]
execute if score #bb.db.b7 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b7: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b8 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b8: 0b}}]
execute if score #bb.db.b8 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b8: 1b}}]
execute if score #bb.db.b8 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b8: 1b}}]
execute if score #bb.db.b8 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b8: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b9 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b9: 0b}}]
execute if score #bb.db.b9 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b9: 1b}}]
execute if score #bb.db.b9 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b9: 1b}}]
execute if score #bb.db.b9 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b9: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b10 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b10: 0b}}]
execute if score #bb.db.b10 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b10: 1b}}]
execute if score #bb.db.b10 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b10: 1b}}]
execute if score #bb.db.b10 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b10: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b11 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b11: 0b}}]
execute if score #bb.db.b11 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b11: 1b}}]
execute if score #bb.db.b11 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b11: 1b}}]
execute if score #bb.db.b11 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b11: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b12 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b12: 0b}}]
execute if score #bb.db.b12 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b12: 1b}}]
execute if score #bb.db.b12 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b12: 1b}}]
execute if score #bb.db.b12 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b12: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b13 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b13: 0b}}]
execute if score #bb.db.b13 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b13: 1b}}]
execute if score #bb.db.b13 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b13: 1b}}]
execute if score #bb.db.b13 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b13: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b14 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b14: 0b}}]
execute if score #bb.db.b14 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b14: 1b}}]
execute if score #bb.db.b14 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b14: 1b}}]
execute if score #bb.db.b14 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b14: 0b}}]

function boomber:database/id/index/swap_buffer
execute if score #bb.db.b15 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b15: 0b}}]
execute if score #bb.db.b15 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output output_buffer append from storage boomber:database/index_output output[{id: {b15: 1b}}]
execute if score #bb.db.b15 bb.ae.calc = #bool.false bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b15: 1b}}]
execute if score #bb.db.b15 bb.ae.calc = #bool.true bb.ae.enum run data modify storage boomber:database/index_output leftover append from storage boomber:database/index_output output[{id: {b15: 0b}}]

function boomber:database/id/index/swap_buffer

data modify storage boomber:database/index_output output set from storage boomber:database/index_output output[0]
data remove storage boomber:database/index_output output_buffer

scoreboard players reset #bb.db.b0 bb.ae.calc
scoreboard players reset #bb.db.b1 bb.ae.calc
scoreboard players reset #bb.db.b2 bb.ae.calc
scoreboard players reset #bb.db.b3 bb.ae.calc
scoreboard players reset #bb.db.b4 bb.ae.calc
scoreboard players reset #bb.db.b5 bb.ae.calc
scoreboard players reset #bb.db.b6 bb.ae.calc
scoreboard players reset #bb.db.b7 bb.ae.calc
scoreboard players reset #bb.db.b8 bb.ae.calc
scoreboard players reset #bb.db.b9 bb.ae.calc
scoreboard players reset #bb.db.b10 bb.ae.calc
scoreboard players reset #bb.db.b11 bb.ae.calc
scoreboard players reset #bb.db.b12 bb.ae.calc
scoreboard players reset #bb.db.b13 bb.ae.calc
scoreboard players reset #bb.db.b14 bb.ae.calc
scoreboard players reset #bb.db.b15 bb.ae.calc