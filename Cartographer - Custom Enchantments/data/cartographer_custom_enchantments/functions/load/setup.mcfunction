
#Setup all necessary scoreboard commands.

scoreboard objectives add adrenaline dummy
scoreboard objectives add agility dummy
scoreboard objectives add aquadynamic dummy
scoreboard objectives add auto_charge dummy
scoreboard objectives add s_cleansing dummy
scoreboard objectives add f_cleansing dummy
scoreboard objectives add w_cleansing dummy
scoreboard objectives add p_cleansing dummy
scoreboard objectives add wi_cleansing dummy
scoreboard objectives add concealed dummy
scoreboard objectives add current dummy
scoreboard objectives add decay dummy
scoreboard objectives add deadeye dummy
scoreboard objectives add despair_wave dummy
scoreboard objectives add destruction_wave dummy
scoreboard objectives add duelist dummy
scoreboard objectives add eruption dummy
scoreboard objectives add evasion dummy
scoreboard objectives add frenzy dummy
scoreboard objectives add frostbite dummy
scoreboard objectives add hunter dummy
scoreboard objectives add infinity dummy
scoreboard objectives add lifesteal dummy
scoreboard objectives add point_blank dummy
scoreboard objectives add repeating dummy
scoreboard objectives add regeneration dummy
scoreboard objectives add sapper dummy
scoreboard objectives add satiation dummy
scoreboard objectives add second_wind dummy
scoreboard objectives add sharpshot dummy
scoreboard objectives add stunning dummy
scoreboard objectives add transfiguration dummy
scoreboard objectives add tempo_theft dummy
scoreboard objectives add unbreakable dummy
scoreboard objectives add vengeance dummy

#vicious
#shocking
#echo
#infernal
#committed
#surging_edge

#volatile
#frost
#rend
#conductive
#pin_down
#tempest

#splintering

#spurs

scoreboard objectives add curse_malevolent dummy
scoreboard objectives add curse_twohanded dummy

#Setup dummy player score for Second Wind calculations.
scoreboard players set SecondWindHelper second_wind 10

#Setup Second Wind cooldown timer and bank.
scoreboard objectives add second_wind_cool dummy
scoreboard objectives add second_wind_test dummy
scoreboard objectives add second_wind_save dummy
scoreboard objectives add second_wind_kill totalKillCount

#Setup all necessary helper scoreboards.

scoreboard objectives add player_health health

scoreboard objectives add helper_tempo dummy
scoreboard objectives add helper_repeat dummy
scoreboard objectives add helper_health dummy
scoreboard objectives add helper_kill totalKillCount
scoreboard objectives add helper_evade dummy
scoreboard objectives add helper_damaged minecraft.custom:minecraft.damage_taken
scoreboard objectives add helper_resist minecraft.custom:minecraft.damage_resisted
scoreboard objectives add helper_heal_bank dummy
scoreboard objectives add helper_deal_dmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add helper_stun_show dummy
scoreboard objectives add helper_melee dummy
scoreboard objectives add helper_spawner minecraft.mined:minecraft.spawner
scoreboard objectives add helper_lifetime dummy
scoreboard objectives add helper_deathtime minecraft.custom:minecraft.time_since_death

scoreboard objectives add helper_fire_bow minecraft.used:minecraft.bow
scoreboard objectives add helper_fire_cbow minecraft.used:minecraft.crossbow
scoreboard objectives add helper_arrow_dmg dummy
scoreboard objectives add helper_trident minecraft.used:minecraft.trident

scoreboard objectives add helper_splashpot minecraft.used:minecraft.splash_potion
scoreboard objectives add helper_lingerpot minecraft.used:minecraft.lingering_potion
scoreboard objectives add helper_potion minecraft.used:minecraft.potion
scoreboard objectives add helper_pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add helper_eye minecraft.used:minecraft.ender_eye

scoreboard objectives add helper_bread minecraft.used:minecraft.bread
scoreboard objectives add helper_m_soup minecraft.used:minecraft.mushroom_stew
scoreboard objectives add helper_apple minecraft.used:minecraft.apple
scoreboard objectives add helper_fish minecraft.used:minecraft.cod
scoreboard objectives add helper_c_fish minecraft.used:minecraft.cooked_cod
scoreboard objectives add helper_salmon minecraft.used:minecraft.salmon
scoreboard objectives add helper_c_salmon minecraft.used:minecraft.cooked_salmon
scoreboard objectives add helper_kelp minecraft.used:minecraft.dried_kelp
scoreboard objectives add helper_pork minecraft.used:minecraft.porkchop
scoreboard objectives add helper_c_pork minecraft.used:minecraft.cooked_porkchop
scoreboard objectives add helper_beef minecraft.used:minecraft.beef
scoreboard objectives add helper_c_beef minecraft.used:minecraft.cooked_beef
scoreboard objectives add helper_chicken minecraft.used:minecraft.chicken
scoreboard objectives add helper_c_chicken minecraft.used:minecraft.cooked_chicken
scoreboard objectives add helper_mutton minecraft.used:minecraft.mutton
scoreboard objectives add helper_c_mutton minecraft.used:minecraft.cooked_mutton
scoreboard objectives add helper_rabbit minecraft.used:minecraft.rabbit
scoreboard objectives add helper_c_rabbit minecraft.used:minecraft.cooked_rabbit
scoreboard objectives add helper_cookie minecraft.used:minecraft.cookie
scoreboard objectives add helper_melon minecraft.used:minecraft.melon_slice
scoreboard objectives add helper_pie minecraft.used:minecraft.pumpkin_pie
scoreboard objectives add helper_carrot minecraft.used:minecraft.carrot
scoreboard objectives add helper_g_carrot minecraft.used:minecraft.golden_carrot
scoreboard objectives add helper_p_potato minecraft.used:minecraft.poisonous_potato
scoreboard objectives add helper_potato minecraft.used:minecraft.potato
scoreboard objectives add helper_c_potato minecraft.used:minecraft.baked_potato
scoreboard objectives add helper_chorus minecraft.used:minecraft.chorus_fruit
scoreboard objectives add helper_beet minecraft.used:minecraft.beetroot
scoreboard objectives add helper_b_soup minecraft.used:minecraft.beetroot_soup
scoreboard objectives add helper_r_soup minecraft.used:minecraft.rabbit_stew
scoreboard objectives add helper_flesh minecraft.used:minecraft.rotten_flesh
scoreboard objectives add helper_s_eye minecraft.used:minecraft.spider_eye
scoreboard objectives add helper_honey minecraft.used:minecraft.honey_bottle
scoreboard objectives add helper_milk minecraft.used:minecraft.milk_bucket

scoreboard objectives add helper_inf_cool dummy

scoreboard players set @a helper_inf_cool 0

#Start the initial run to calculate what custom enchantments the player has.

function cartographer_custom_enchantments:loop/calc_enchant/base

#Start initial required looping to trigger enchant effects.

function cartographer_custom_enchantments:loop/tick/base
function cartographer_custom_enchantments:loop/1_second/base
function cartographer_custom_enchantments:loop/3_second/base

#Give the players a tag for the load message.

tag @a add custom_enchants