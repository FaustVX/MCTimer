
scoreboard objectives add fvx.clock dummy
scoreboard players set NightTime fvx.clock 12540
scoreboard players set IsNight fvx.clock 0

# bossbar to display the time
bossbar add faustvx:clock " Day |Night"
bossbar set faustvx:clock max 24000
bossbar set faustvx:clock style notched_6
bossbar set faustvx:clock players @a[advancements={faustvx:faustvx/get_compass=true}]
bossbar set faustvx:clock visible true