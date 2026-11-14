$content = Get-Content -Path 'index.html' -Raw
$content = $content -replace 'Ã¢Å“â€¦', '✅' -replace 'Ã¢Å“Â¨', '🚀' -replace 'Ã¢â‚¬â„¢', '📞' -replace 'Ã¢â€ Â', '📄' -replace 'Aspiring AI Engineer Ã¢â‚¬â€œ', 'Aspiring AI Engineer -' -replace 'Ã¢â‚¬â„¢Abir Ahmed', 'Abir Ahmed' -replace 'Ã¢Å“â€¦Abir Ahmed', 'Abir Ahmed'
[System.IO.File]::WriteAllText((Resolve-Path 'index.html'), $content, (New-Object System.Text.UTF8Encoding($false)))
Write-Host '✅ সমস্যা সমাধান হয়েছে!' -ForegroundColor Green
