scoreboard objectives add mctimer.clock trigger
scoreboard objectives add mctimer.announce trigger
scoreboard objectives add mctimer.timer dummy

scoreboard players set NightTimeStart mctimer.timer 12542
scoreboard players set NightTimeStop mctimer.timer 23460
scoreboard players set IsNight mctimer.timer 0

scoreboard players set @a mctimer.clock 1
scoreboard players set @a mctimer.announce 1

# bossbar to display the time
bossbar add faustvx:clock " Day |Night"
bossbar set faustvx:clock max 24000
bossbar set faustvx:clock style notched_6
bossbar set faustvx:clock players @a[advancements={faustvx:faustvx/get_compass=true}]
bossbar set faustvx:clock visible true