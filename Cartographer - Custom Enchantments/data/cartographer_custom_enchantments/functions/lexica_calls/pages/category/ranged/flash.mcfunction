tag @s add gmr_frozen
gamerule sendCommandFeedback false



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s lexica_trig

tellraw @s [{"text":"❰","color":"green","bold":true},{"text":"⊰ Lexica Cartographia ⊱","color":"#ACFFA6","bold":true},{"text":"❱","color":"green","bold":true},{"text":"---------------------------","color":"#ACFFA6","bold":true}]
tellraw @s {"text":"Your comprehensive guide to foreign facts.","color":"#ACFFA6","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

tellraw @s [{"text":"Flash","color":"yellow","bold":true,"italic":false}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"Description: ","color":"green","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}},{"text":"Ranged attacks with this weapon have up to a 70% chance to inflict ","color":"#FFF4D9","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}},{"text":"[Stunned]","color":"#CC73FF","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information on Stunned.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_custom_statuses:lexica_calls/pages/category/stunned"}},{"text":" for up to 1 second. The chance and duration are decreased if the arrow is not at full charge.","color":"#FFF4D9","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s [{"text":"Applicable Slots: ","color":"green","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}},{"text":"Bows, Crossbows","color":"#FFF4D9","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s [{"text":"Maximum Level: ","color":"green","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}},{"text":"1 (I)","color":"#FFF4D9","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 205"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

