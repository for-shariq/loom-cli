foreach ($s in "python-coding-standards","csharp-dotnet-standards","react-frontend","token-optimization") {
    New-Item -ItemType Directory -Force -Path "src\loom\skills\$s\references" | Out-Null
    New-Item -ItemType Directory -Force -Path "src\loom\skills\$s\scripts" | Out-Null
    "# TODO: fill in reference content for $s" | Out-File -Encoding utf8 "src\loom\skills\$s\references\README.md"
    "# TODO: scripts for $s" | Out-File -Encoding utf8 "src\loom\skills\$s\scripts\README.md"
}