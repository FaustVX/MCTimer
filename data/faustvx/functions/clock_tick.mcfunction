scoreboard players enable @a[advancements={faustvx:faustvx/get_compass=true}] mctimer.clock
scoreboard players enable @a[advancements={faustvx:faustvx/get_compass=true}] mctimer.announce
bossbar set faustvx:clock players @a[advancements={faustvx:faustvx/get_compass=true},scores={mctimer.clock=1}]
execute store result bossbar faustvx:clock value store result score ClockPlayer mctimer.timer run time query daytime
# if day time
scoreboard players set IsNight mctimer.timer 0
bossbar set faustvx:clock color yellow
execute if score ClockPlayer mctimer.timer = NightTimeStart mctimer.timer run title @a[advancements={faustvx:faustvx/get_compass=true},scores={mctimer.announce=1}] title "It's Night Time"
execute if score ClockPlayer mctimer.timer = NightTimeStop mctimer.timer run title @a[advancements={faustvx:faustvx/get_compass=true},scores={mctimer.announce=1}] title "It's Day Time"
# if night time
execute if score ClockPlayer mctimer.timer >= NightTimeStart mctimer.timer if score ClockPlayer mctimer.timer < NightTimeStop mctimer.timer run scoreboard players set IsNight mctimer.timer 1
execute if score IsNight mctimer.timer matches 1 run bossbar set faustvx:clock color purple