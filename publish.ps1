$today = Get-Date -DisplayHint Date -Format "dd MMMM yyyy"
$today_folder = Get-Date -DisplayHint DateTime -Format yyyy-MM-dd
git add $today_folder\*
git commit -m "Journal entry for $today"
git push -u origin master