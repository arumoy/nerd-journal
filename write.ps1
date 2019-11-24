$today_folder = Get-Date -DisplayHint DateTime -Format dd-MM-yyyy
mkdir $today_folder | Out-Null
cd $today_folder
$post_header = Get-Date -DisplayHint DateTime -Format "dd MMMM yyyy, hh:mm:ss tt"
echo "# $post_header" > README.md
code README.md