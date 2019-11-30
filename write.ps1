$today_folder = Get-Date -DisplayHint DateTime -Format dd-MM-yyyy
mkdir $today_folder | Out-Null
$post_header = Get-Date -DisplayHint DateTime -Format "dd MMMM yyyy, hh:mm:ss tt"
Write-Output "# $post_header" > $today_folder\README.md
code $today_folder\README.md