execute if score @s cdl.Death_ID matches 310201 run tellraw @a [{"selector":"@p"},{"text":" was flattened by ","color":"white"},{"selector":"@e[limit=1,tag=charge,sort=nearest]"}]
execute if score @s cdl.Death_ID matches 310202 run tellraw @a [{"selector":"@p"},{"text":" was disarmed by ","color":"white"},{"selector":"@e[limit=1,tag=disarm,sort=nearest]"}]
execute if score @s cdl.Death_ID matches 310203 run tellraw @a [{"selector":"@p"},{"text":" was manablasted by ","color":"white"},{"selector":"@e[limit=1,tag=nova,sort=nearest]"}]
execute if score @s cdl.Death_ID matches 310204 run tellraw @a [{"selector":"@p"},{"text":" was rumbled to death.","color":"white"}]
execute if score @s cdl.Death_ID matches 310205 run tellraw @a [{"selector":"@p"},{"text":" was hookshot by ","color":"white"},{"selector":"@e[limit=1,tag=hookshot,sort=nearest]"}]
execute if score @s cdl.Death_ID matches 310206 run tellraw @a [{"selector":"@p"},{"text":" was squished by ","color":"white"},{"selector":"@e[limit=1,tag=smash,sort=nearest]"}]
execute if score @s cdl.Death_ID matches 310207 run tellraw @a [{"selector":"@p"},{"text":" was terrified by ","color":"white"},{"selector":"@e[limit=1,tag=soulfire_nova,sort=nearest]"}]
execute if score @s cdl.Death_ID matches 310208 run tellraw @a [{"selector":"@p"},{"text":" was cut down by ","color":"white"},{"selector":"@e[limit=1,tag=sweep,sort=nearest]"}]
execute if score @s cdl.Death_ID matches 310209 run tellraw @a [{"selector":"@p"},{"text":" was drowned in poison by ","color":"white"},{"selector":"@e[limit=1,tag=venom_nova,sort=nearest]"}]
execute if score @s cdl.Death_ID matches 310210 run tellraw @a [{"selector":"@p"},{"text":" was flung by ","color":"white"},{"selector":"@e[limit=1,tag=wind_nova,sort=nearest]"}]
execute if score @s cdl.Death_ID matches 310211 run tellraw @a [{"selector":"@p"},{"text":" was webbed by ","color":"white"},{"selector":"@e[limit=1,tag=webshot,sort=nearest]"}]