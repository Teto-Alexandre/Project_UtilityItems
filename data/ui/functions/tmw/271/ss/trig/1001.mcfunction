tag @a add tmw_271_player
tag @a add tmw_271_player_alive
say @a[tag=tmw_271_player]を参加者として開始します

scoreboard players set $players ui_tmw271_sys 0
execute as @a run scoreboard players add $players ui_tmw271_sys 1

function ui:tmw/271/nofunc/id_maker/

scoreboard objectives add ui_tmw271_job dummy
scoreboard players set @a ui_tmw271_job 1
scoreboard players set @a[scores={ui_tmw271_job=1},sort=random,limit=1] ui_tmw271_job 2
execute if score $players ui_tmw271_sys matches 2.. run scoreboard players set @a[scores={ui_tmw271_job=1},sort=random,limit=1] ui_tmw271_job 3
execute if score $players ui_tmw271_sys matches 5.. run scoreboard players set @a[scores={ui_tmw271_job=1},sort=random,limit=1] ui_tmw271_job 2
execute if score $players ui_tmw271_sys matches 3.. run scoreboard players set @a[scores={ui_tmw271_job=1},sort=random,limit=1] ui_tmw271_job 4
execute as @a[tag=tmw_271_player,scores={ui_tmw271_job=1}] run tellraw @s [{"text":"村人です"}]
execute as @a[tag=tmw_271_player,scores={ui_tmw271_job=2}] run tellraw @s [{"text":"人狼です"}]
execute as @a[tag=tmw_271_player,scores={ui_tmw271_job=3}] run tellraw @s [{"text":"占い師です"}]
execute as @a[tag=tmw_271_player,scores={ui_tmw271_job=4}] run tellraw @s [{"text":"霊媒師です"}]

scoreboard objectives add ui_tmw271_skill_ct dummy
scoreboard players set @a[tag=tmw_271_player,scores={ui_tmw271_job=1}] ui_tmw271_skill_ct 0
scoreboard players set @a[tag=tmw_271_player,scores={ui_tmw271_job=2}] ui_tmw271_skill_ct 0
scoreboard players set @a[tag=tmw_271_player,scores={ui_tmw271_job=3}] ui_tmw271_skill_ct 0
scoreboard players set @a[tag=tmw_271_player,scores={ui_tmw271_job=4}] ui_tmw271_skill_ct 0
execute as @a[tag=tmw_271_player,scores={ui_tmw271_job=1}] run tellraw @s [{"text":"能力：なし"}]
execute as @a[tag=tmw_271_player,scores={ui_tmw271_job=2}] run tellraw @s [{"text":"人狼は"},{"selector":"@a[tag=tmw_271_player,scores={ui_tmw271_job=2}]"},{"text":"です"}]
execute as @a[tag=tmw_271_player,scores={ui_tmw271_job=3}] run tellraw @s [{"text":"能力：占い  クールタイム：１分  選んだ一人の職業を適当に判明させる"}]
execute as @a[tag=tmw_271_player,scores={ui_tmw271_job=4}] run tellraw @s [{"text":"能力：霊媒  クールタイム：３０秒  選んだ一人の職業を適当に判明させる"}]

scoreboard objectives add ui_tmw271_team dummy
scoreboard players set @a[tag=tmw_271_player,scores={ui_tmw271_job=1}] ui_tmw271_team 1
scoreboard players set @a[tag=tmw_271_player,scores={ui_tmw271_job=2}] ui_tmw271_team 2
scoreboard players set @a[tag=tmw_271_player,scores={ui_tmw271_job=3}] ui_tmw271_team 1
scoreboard players set @a[tag=tmw_271_player,scores={ui_tmw271_job=4}] ui_tmw271_team 1
execute as @a[tag=tmw_271_player,scores={ui_tmw271_team=1}] run tellraw @s [{"text":"勝利条件：人狼がいなくなること"}]
execute as @a[tag=tmw_271_player,scores={ui_tmw271_team=2}] run tellraw @s [{"text":"勝利条件：村人がいなくなること"}]

gamerule keepInventory true
scoreboard players set $game ui_tmw271_sys 1