#マーカーをその場に召喚
summon marker ~ ~ ~

#snowを1消費する
scoreboard players remove @s snow 1

#マーカーの4ブロック以内のtarget1体にのみダメージ
execute as @e[type=marker] at @s \
if entity @e[tag=target,distance=..4] \
run damage @e[tag=target,sort=nearest,limit=1] 2 minecraft:freeze