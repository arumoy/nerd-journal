$today = Get-Date -DisplayHint Date -Format "dd MMMM yyyy"
git add .
git commit -m "Journal entry for $today"
git push -u origin master