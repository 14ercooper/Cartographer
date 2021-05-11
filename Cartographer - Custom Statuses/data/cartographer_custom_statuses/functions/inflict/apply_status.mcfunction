#Custom Debuff Conversion Chart
# Nausea 10 - Stunned
# Nausea 11 - Shocked
# Nausea 12 - Infection
# Nausea 13 - Bleeding
# Nausea 14 - Cloaked

say converting

data modify storage ca.custom_status apply set value {}
data modify storage ca.custom_status apply set from entity @s ActiveEffects[{Id:9b}]

execute store result score @s time_convert run data get storage ca.custom_status apply.Duration
scoreboard players remove @s time_convert 1

scoreboard players operation @s time_convert /= $20 ca.CONSTANT
scoreboard players add @s time_convert 1

execute store result score @s id_convert run data get storage ca.custom_status apply.Amplifier

execute if entity @s[scores={id_convert=10}] run scoreboard players operation @s time_convert *= $20 ca.CONSTANT
execute if entity @s[scores={id_convert=10}] run scoreboard players operation @s effect_stunned = @s time_convert
execute if entity @s[scores={id_convert=11}] run scoreboard players operation @s effect_shocked = @s time_convert
execute if entity @s[scores={id_convert=12}] run scoreboard players operation @s effect_infect = @s time_convert
execute if entity @s[scores={id_convert=13}] run scoreboard players add @s effect_bleed 0
execute if entity @s[scores={id_convert=13,effect_bleed=0}] run scoreboard players operation @s effect_bleed = @s time_convert
execute if entity @s[scores={id_convert=10,effect_bleed=1..}] run scoreboard players add @s effect_bleed 11
execute if entity @s[scores={id_convert=14}] run scoreboard players operation @s effect_cloaked = @s time_convert

effect clear @s nausea