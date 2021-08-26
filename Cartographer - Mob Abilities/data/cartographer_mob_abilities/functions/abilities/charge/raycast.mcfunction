particle minecraft:smoke ~ ~ ~ 0.85 0.75 0.85 0.05 15 normal
particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 1 force

execute if entity @s[scores={ca.raycast=1}] run particle minecraft:cloud ~ ~ ~ 0 0.3 0 0.15 15 normal

scoreboard players remove @s[scores={ca.raycast=1..}] ca.raycast 1

execute as @a[distance=..1.75,tag=!ran_over] at @s run scoreboard players operation @s cdl.Damage_Queue = $damage ca.ability_dmg
execute as @a[distance=..1.75,tag=!ran_over] at @s run scoreboard players set @s cdl.Death_ID 310201
execute as @a[distance=..1.75,tag=!ran_over] at @s run function cd:lib/player/damage/normal
execute as @a[distance=..1.75,tag=!ran_over] at @s run tag @s add ability_tagged
execute as @a[distance=..1.75,tag=!ran_over] at @s run tag @s add ran_over


tp @s ^ ^ ^0.5

execute unless block ^ ^ ^0.5 #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 0 run tp @s ^ ^-0.1 ^

execute as @s[scores={ca.raycast=0}] at @s positioned ~ ~-0.5 ~ run function cartographer_mob_abilities:passive/breaker

execute if entity @s[scores={ca.raycast=1..}] if block ~ ~ ~ #cartographer_core:can_raycast if block ^ ^ ^0.5 #cartographer_core:can_raycast positioned ^ ^ ^0.5 run function cartographer_mob_abilities:abilities/charge/raycast