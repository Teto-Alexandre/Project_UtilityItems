
# アメジスト耐性によるダメージ減算と耐性増加

    scoreboard players operation $Damage tds_dmg -= @s tds_amethyst
    scoreboard players operation $Damage tds_dmg > $0 tds_dmg
    scoreboard players operation $temp tds_amethyst = $Damage tds_dmg
    scoreboard players operation $temp tds_amethyst /= $2 tds_dmg
    scoreboard players operation @s tds_amethyst += $temp tds_amethyst

    scoreboard players set @s tds_amethyst_t 10