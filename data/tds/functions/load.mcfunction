#これはリロード時に実行されるコマンドです

scoreboard objectives add tds_dmg dummy
execute unless score $version tds_dmg matches 3 run function tds:init