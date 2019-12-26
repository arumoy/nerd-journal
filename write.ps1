$today_folder = Get-Date -DisplayHint DateTime -Format yyyy-MM-dd
mkdir $today_folder | Out-Null
$post_header = Get-Date -DisplayHint DateTime -Format "dd MMMM yyyy, hh:mm:ss tt"
Add-Content -Path $today_folder\README.md -Value "# $post_header"
code $today_folder\README.md