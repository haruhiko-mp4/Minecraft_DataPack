#snowを初期化
execute as @e[type=cat,tag=core] run scoreboard players add @s snow 0
#足元に積雪があればsnowを増やす
execute as @e[type=cat,tag=core] at @s if block ~2 ~ ~ minecraft:snow run scoreboard players add @s snow 8
execute as @e[type=cat,tag=core] at @s if block ~-2 ~ ~ minecraft:snow run scoreboard players add @s snow 8
execute as @e[type=cat,tag=core] at @s if block ~ ~ ~2 minecraft:snow run scoreboard players add @s snow 8
execute as @e[type=cat,tag=core] at @s if block ~ ~ ~-2 minecraft:snow run scoreboard players add @s snow 8
execute as @e[type=cat,tag=core] at @s if block ~ ~1 ~ minecraft:snow run scoreboard players add @s snow 8
execute as @e[type=cat,tag=core] at @s if block ~ ~-1 ~ minecraft:snow run scoreboard players add @s snow 8

#足元に積雪があればそれを空気と置き換える_↓旧コマンド一応保管
#execute as @e[type=minecraft:cat,tag=core] at @s if block ~ ~ ~ minecraft:snow run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:cat,tag=core] at @s run fill ~-2 ~-1 ~-2 ~2 ~1 ~2 air replace minecraft:snow

#snowが321以上になったら320にする(上限を設けている)
execute as @e[type=cat,tag=core,scores={snow=321..}] run scoreboard players set @s snow 320




#0、80<320(3/4以上)の時にパーティクル
execute as @e[type=cat,tag=core,scores={snow=0}] at @s run particle minecraft:smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.01 2 normal
execute as @e[type=cat,tag=core,scores={snow=80..320}] at @s run particle snowflake ~ ~0.5 ~ 0.4 0.4 0.4 0.01 1 normal



#16ブロック以内のモンスター1体にtargetタグを付ける
execute as @e[type=cat,tag=core] at @s run tag @e[type=creeper,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=zombie,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=zombie_villager,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=skeleton,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=stray,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=husk,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=drowned,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=bogged,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=parched,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=spider,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=cave_spider,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=witch,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=enderman,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=endermite,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=slime,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=silverfish,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=phantom,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=elder_guardian,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=guardian,sort=nearest,limit=1,distance=..16] add target

execute as @e[type=cat,tag=core] at @s run tag @e[type=pillager,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=vindicator,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=vex,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=evoker,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=ravager,sort=nearest,limit=1,distance=..16] add target

execute as @e[type=cat,tag=core] at @s run tag @e[type=wither_skeleton,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=ghast,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=magma_cube,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=hoglin,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=blaze,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=piglin_brute,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=piglin,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=shulker,sort=nearest,limit=1,distance=..16] add target

execute as @e[type=cat,tag=core] at @s run tag @e[type=creaking,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=breeze,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=warden,sort=nearest,limit=1,distance=..16] add target
execute as @e[type=cat,tag=core] at @s run tag @e[type=wither,sort=nearest,limit=1,distance=..16] add target

#targetがつけられた敵にパーティクル
#execute as @e[tag=target] at @s run particle wax_off ~ ~1 ~ 0.2 0.2 0.2 0 10

#射程内にtargetがいなくなったらtargetタグをリセット
execute as @e[type=cat,tag=core] at @s \
unless entity @e[tag=target,distance=..16] \
run tag @e[tag=target,limit=1] remove target



#coreのsnowが1以上で、targetが16ブロック以内にいて、
#マーカーが2ブロック以内に無い時、beam.mcfunctionを実行
execute as @e[type=cat,tag=core,scores={snow=1..}] at @s \
if entity @e[tag=target,distance=..16] \
unless entity @e[type=marker,distance=..2] \
run function th_snowrobot:beam


#マーカーはtargetの方へ向かい、(半ブロック先が置き換え可能ブロックなら)
execute as @e[type=marker] at @s \
if block ^ ^ ^0.5 #minecraft:replaceable \
facing entity @e[tag=target,sort=nearest,limit=1] eyes \
run tp @s ^ ^ ^0.5
#パーティクルを残す
execute as @e[type=marker] at @s \
run particle snowflake ~ ~ ~ 0 0 0 0 1
#targtの2ブロック以内に入ったらマーカーを消す
execute as @e[type=marker] at @s \
if entity @e[tag=target,distance=..2] \
run kill @s
#20ブロック以内(ネコの射程以上)にtargetがいない場合、マーカーを消す
execute as @e[type=marker] at @s \
unless entity @e[tag=target,distance=..20] \
run kill @s




#スニーク検知
    #ネコの4ブロック以内で右手に1スタックの雪玉を持っており、
    #かつloadで作ってあるSneakの値が1以上(つまりスニークをしている)場合、
    #charge.mcfunctionを実行する
    execute as @a[scores={Sneak=1..}] if items entity @s weapon.mainhand minecraft:snowball[count=16] \
    at @s \
    if entity @e[type=cat,tag=core,distance=..4] \
    run function th_snowrobot:charge

    #snow renchを持っている状態でスニークすると、summon.mcfunctionを実行
    execute as @a[scores={Sneak=1..}] if items entity @s weapon.mainhand minecraft:stick[minecraft:custom_model_data={strings:["snow_rench"]}] unless entity @e[type=cat,tag=core] at @s \
    run function th_snowrobot:summon
    #すでにcoreネコがいる際は、こちらにネコをtpさせる
    execute as @a[scores={Sneak=1..}] if items entity @s weapon.mainhand minecraft:stick[minecraft:custom_model_data={strings:["snow_rench"]}] unless entity @e[type=cat,tag=core,distance=0] at @s \
    run tp @e[type=cat,tag=core] @p

    #loadで作ってあるSneakの値が1以上になったら0にする
    #(こうすることで雪玉を渡す瞬間だけスニーク検知できる)
    scoreboard players set @a[scores={Sneak=1..}] Sneak 0


#coreにskinを追従させる
execute as @e[type=block_display,tag=skin] at @s run tp @s \
@e[type=cat,tag=core,limit=1]

#もしcoreがいなくなったら、skinも消す
execute unless entity @e[type=cat,tag=core] \
run kill @e[type=block_display,tag=skin]