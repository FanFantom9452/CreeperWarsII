#Made By Fan_Fan_tom

$execute if score $(target) upgrade.$(team) matches 1 run function cp2:type/work/upgrade/already_buy_it {amount:"$(amount)"}
$execute unless score $(target) upgrade.$(team) matches 1 run function cp2:type/work/upgrade/successfully_buy_it {target:"$(target)",team:"$(team)",text:"$(text)",level:"$(level)"}