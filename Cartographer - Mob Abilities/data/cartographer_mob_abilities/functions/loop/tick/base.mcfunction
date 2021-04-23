#Loop all abilities that need to be played each tick. This includes Laser (active), Hybrid Fighter (NYI), all On-Death Skills, and helper functions for Hookshot.
#This also sets mob tags properly for active skill mobs and on death mobs.

#Set the score of helper difficulty equal to Minecraft's current difficulty
execute if score $cart_ind_diff global_options matches 0 run scoreboard players operation $global_past helper_diff = $global helper_diff
execute if score $cart_ind_diff global_options matches 0 run execute store result score $global helper_diff run difficulty

#When you change difficulty, tokens need to be entirely reset.
execute unless score $global_past helper_diff = $global helper_diff run tag @a remove token_reset

#Set all tokens on players properly who do not have the "token_reset" tag
execute as @a[tag=!token_reset] at @s run function cartographer_mob_abilities:load/token_reset

execute as @e[type=!#cartographer_core:not_tracked] at @s run function cartographer_mob_abilities:loop/tick/entities

#Do a line of sight check on one mob that *doesn't* have Line of Sight.
execute if score $do_los flag matches 1 as @e[type=#cartographer_core:hostile,tag=!los_checked,tag=has_active,scores={cooldown=0},limit=1,sort=random] at @s run function cartographer_mob_abilities:helper/los_check/scan

#Unflag the check for needing los
scoreboard players set $do_los flag 0