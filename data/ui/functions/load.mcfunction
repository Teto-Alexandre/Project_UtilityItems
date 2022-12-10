#これはリロード時に実行されるコマンドです

scoreboard objectives add ui_world dummy {"text":"UtilityItems_World","color":"dark_blue"}
execute unless score $version ui_world matches 47 run function ui:misc/init