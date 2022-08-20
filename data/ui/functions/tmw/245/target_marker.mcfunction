# ターゲットエンティティがマーカーを生成する
execute at @s facing entity @e[tag=ui_temp_this] feet positioned ^ ^ ^1 facing entity @s feet positioned as @e[tag=ui_temp_this] positioned ^ ^ ^5 run summon marker ~ ~ ~ {Tags:["ui_temp_marker"]}

# sayには反応する
#execute if score $world ui_tc matches 1 run say a

# tagにも反応する プライヤー入力ではドラゴン単体のみ
#tag @s add dragon.test
#execute as @e[tag=dragon.test] if score $world ui_tc matches 1 run say a

# scoreにも反応する
#scoreboard players set @s ui_tmw102_id 1
#execute store result score @s ui_tmw102_id run data get entity @s Pos.[0]
#scoreboard objectives setdisplay sidebar ui_tmw102_id
