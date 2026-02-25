#coreタグ付きで無音のネコを召喚
summon minecraft:cat ~ ~ ~ {Tags:["core"],CustomName:["snowrobo"],Silent:1b}

#と同時に、ついてくる懐いた状態に
execute as @a at @s run data modify entity @e[type=cat,tag=core,limit=1] Owner set from entity @s UUID

#パーティクル
execute as @e[type=cat,tag=core] at @s run particle instant_effect ~ ~0.5 ~ 0.4 0.4 0.4 0.01 12 normal

#耐性と透明化を付与
execute as @e[type=cat,tag=core] at @s run effect give @s invisibility infinite 0 true
execute as @e[type=cat,tag=core] at @s run effect give @s resistance infinite 5 true

#音
playsound entity.experience_orb.pickup



#skinタグ付きのblock_displayを召喚(同じものが存在しないなら)
execute as @e[type=cat,tag=core] \
unless entity @e[type=block_display,tag=skin] \
at @s \
run summon minecraft:block_display ~ ~ ~ {Tags:["skin"],block_state:{Name:"minecraft:note_block",Properties:{instrument:"banjo",note:"24",powered:"false"}}}
#音色がバンジョーかつ最高音かつ信号がOFFのときの音符ブロック