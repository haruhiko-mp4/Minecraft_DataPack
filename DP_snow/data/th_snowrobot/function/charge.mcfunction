scoreboard players set @e[type=cat,tag=core,sort=nearest,limit=1,distance=..4,scores={snow=..320}] snow 320

clear @s minecraft:snowball 16

playsound entity.experience_orb.pickup ambient @a ~ ~ ~

execute as @e[type=cat,tag=core] at @s run particle instant_effect ~ ~0.5 ~ 0.4 0.4 0.4 0.01 12 normal