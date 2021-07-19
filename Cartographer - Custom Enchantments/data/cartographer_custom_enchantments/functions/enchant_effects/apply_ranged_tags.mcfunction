#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" applying ranged tags.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.flame 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}]}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.flame 1

execute if entity @s[scores={ca.cauterize=1..}] run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.cauterize 1
execute if entity @s[scores={ca.cauterize=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={ca.rend=1..}] run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.rend 1
execute if entity @s[scores={ca.rend=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={ca.conductive=1..}] run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.conductive 1
execute if entity @s[scores={ca.conductive=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={ca.frost=1..}] run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.frost 1
execute if entity @s[scores={ca.frost=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={ca.pin_down=1..}] run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.pin_down 1
execute if entity @s[scores={ca.pin_down=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={ca.putrefy=1..}] run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.putrefy 1
execute if entity @s[scores={ca.putrefy=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={ca.flash=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={ca.volatile=1..}] run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.volatile 1
execute if entity @s[scores={ca.volatile=1..}] as @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] at @s store result score @s ca.vol_dmg run data get entity @s damage 10
execute if entity @s[scores={ca.volatile=1..}] as @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] at @s run data merge entity @s {damage:0.0d}
execute if entity @s[scores={ca.volatile=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow

execute if entity @s[scores={ca.volatile=1..},nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_flame
execute if entity @s[scores={ca.volatile=1..},nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add vol_flame

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}}}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.punch 1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:punch",lvl:2s}]}}}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.punch 2
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}}}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.punch 3
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:punch",lvl:4s}]}}}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.punch 4
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:punch",lvl:5s}]}}}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.punch 5

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}}]}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.punch 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:2s}]}}]}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.punch 2
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}}]}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.punch 3
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:4s}]}}]}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.punch 4
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:5s}]}}]}] at @s run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.punch 5

execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add p_cross
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch",lvl:2s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add p_cross
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add p_cross
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch",lvl:4s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add p_cross
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:punch",lvl:5s}]}}}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add p_cross

execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:1s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add p_cross
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:2s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add p_cross
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add p_cross
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:4s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add p_cross
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:punch",lvl:5s}]}}]}] at @s run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add p_cross


execute if entity @s[scores={ca.tempo_theft=1}] run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.tempo_theft 1
execute if entity @s[scores={ca.tempo_theft=2}] run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.tempo_theft 2
execute if entity @s[scores={ca.tempo_theft=3}] run scoreboard players set @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] ca.tempo_theft 3
execute if entity @s[scores={ca.tempo_theft=1..}] run tag @e[type=#cartographer_core:arrow,limit=3,distance=..7,sort=nearest] add custom_arrow