#===========================================================================

#弾を出す
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","ui","ui_proj","ui_304_1","ui_304_unpower"]}
execute as @e[tag=ui_304_unpower] at @s rotated as @p positioned ~ ~1 ~ run teleport @s ^ ^ ^1 ~ ~
scoreboard players set @e[tag=ui_304_unpower] ui_bm 10
scoreboard players set @e[tag=ui_304_unpower] ui_br 100
tag @e[tag=ui_304_unpower] remove ui_304_unpower

#アイテム転置
execute in overworld run item replace block 0 0 0 container.0 from entity @s weapon.mainhand
execute in overworld store result score $ammo ui_calc1 run data get block 0 0 0 Items.[0].tag.Damage 1
execute in overworld if score $ammo ui_calc1 matches ..24 store result block 0 0 0 Items.[0].tag.Damage int 1 run scoreboard players operation $ammo ui_calc1 += #1 ui_num
execute in overworld if score $ammo ui_calc1 matches ..24 run item replace entity @s weapon.mainhand from block 0 0 0 container.0
execute if score $ammo ui_calc1 matches 25.. run particle block iron_block ~ ~1.2 ~ 0.5 0.5 0.5 1 10 force
execute if score $ammo ui_calc1 matches 25.. run playsound entity.item.break player @a ~ ~ ~ 1 1 0
execute if score $ammo ui_calc1 matches 25.. run item replace entity @s weapon.mainhand with air

#発射音
playsound minecraft:entity.evoker.prepare_attack player @a ~ ~ ~ 1 2 0

#===========================================================================