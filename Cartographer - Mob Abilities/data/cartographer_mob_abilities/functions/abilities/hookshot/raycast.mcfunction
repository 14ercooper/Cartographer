particle minecraft:block minecraft:chain ^ ^ ^ 0 0 0 0 3 normal
particle minecraft:block minecraft:chain ^ ^ ^0.33 0 0 0 0 3 normal
particle minecraft:block minecraft:chain ^ ^ ^0.66 0 0 0 0 3 normal

particle minecraft:smoke ^ ^ ^ 0 0 0 0 3 normal
particle minecraft:smoke ^ ^ ^0.33 0 0 0 0 3 normal
particle minecraft:smoke ^ ^ ^0.66 0 0 0 0 3 normal

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute if entity @a[distance=..2,tag=!hooked] run scoreboard players set @s ca.raycast 0
execute as @a[distance=..2,tag=!hooked] run scoreboard players set @s ca.hooked 101
execute as @a[distance=..2,tag=!hooked] run scoreboard players set $hook_check ca.hooked 101
execute as @a[distance=..2,tag=!hooked] run scoreboard players operation @s cdl.Damage_Queue = $damage ca.ability_dmg
execute as @a[distance=..2,tag=!hooked] run scoreboard players set @s cdl.Death_ID 310205
execute as @a[distance=..2,tag=!hooked] run function cd:lib/player/damage/normal
execute as @a[distance=..2,tag=!hooked] run tag @s add hooked

execute if score @s ca.raycast matches 0 run particle minecraft:cloud ^ ^ ^1 0 0 0 0.1 10 normal

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^1 run function cartographer_mob_abilities:abilities/hookshot/raycast