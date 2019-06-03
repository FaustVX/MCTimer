bossbar set faustvx:clock players @a[advancements={faustvx:faustvx/get_compass=true}]
execute store result bossbar faustvx:clock value store result score ClockPlayer fvx.clock run time query daytime
# if day time
scoreboard players set IsNight fvx.clock 0
bossbar set faustvx:clock color yellow
# if night time
execute if score ClockPlayer fvx.clock > NightTime fvx.clock run scoreboard players set IsNight fvx.clock 1
execute if score IsNight fvx.clock matches 1 run bossbar set faustvx:clock color purple