function cartographer_core:data_get/do

execute if data storage cartographer_core:pl_data working_data.Tokens.CurrentCooling.Owner run scoreboard players set @s cooldown -10

#Return the Current Cooling Down Token to the proper queue.
execute if score @s cooldown matches -10 run scoreboard players set $token_type helper_tokens -1
execute if score @s cooldown matches -10 run execute store result score $token_type helper_tokens run data get storage cartographer_core:pl_data working_data.Tokens.CurrentCooling.Type

execute if score @s cooldown matches -10 run execute if score $token_type helper_tokens matches 0 run data modify storage cartographer_core:pl_data working_data.Tokens.LightTokens append from storage cartographer_core:pl_data working_data.Tokens.CurrentCooling
execute if score @s cooldown matches -10 run execute if score $token_type helper_tokens matches 1 run data modify storage cartographer_core:pl_data working_data.Tokens.HeavyTokens append from storage cartographer_core:pl_data working_data.Tokens.CurrentCooling

execute if score @s cooldown matches -10 run data modify storage cartographer_core:pl_data working_data.Tokens.CurrentCooling set value {}

#Grab the next token off the cooldown stack. Set it to the cooldown score. Save it to current cooling space.
execute store result score @s cooldown if data storage cartographer_core:pl_data working_data.Tokens.CooldownTokens[0].Cooldown run data get storage cartographer_core:pl_data working_data.Tokens.CooldownTokens[0].Cooldown

data modify storage cartographer_core:pl_data working_data.Tokens.CurrentCooling set from storage cartographer_core:pl_data working_data.Tokens.CooldownTokens[0]
data remove storage cartographer_core:pl_data working_data.Tokens.CooldownTokens[0]

function cartographer_core:data_put/do