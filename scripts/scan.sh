echo "\n===== SCANNING FOR CREDIT CARD NUMBERS ====="
grep -rE --color=always '(\b[0-9]{4}[- ]?){3}[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "\n===== CREDIT CARD SCAN COMPLETE ====="

echo "\n===== SCANNING FOR SOCIAL SECURIY NUMBERS ====="
grep -rE --color=always '\b[0-9]{3}-[0-9]{2}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
echo "\n===== SOCIAL SECURIY SCAN COMPLETE ====="

echo "\n===== SCANNING FOR PHONE NUMBERS ====="
grep -rE --color=always '\b[0-9]{3}-[0-9]{3}-[0-9]{4}\b' . --exclude-dir={.git} --line-number
grep -rE --color=always '\([0-9]{3}) [0-9]{3}-[0-9]{4}' . --exclude-dir={.git} --line-number
echo "\n===== PHONE NUMBER SCAN COMPLETE ====="
