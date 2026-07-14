# Command modules  

mkdir src\loom\commands  

New-Item src\loom\commands\__init__.py -ItemType File  

New-Item src\loom\commands\install.py -ItemType File  

New-Item src\loom\commands\list_cmd.py -ItemType File  

New-Item src\loom\commands\add.py -ItemType File  

New-Item src\loom\commands\remove.py -ItemType File  

New-Item src\loom\commands\upgrade.py -ItemType File  

New-Item src\loom\commands\doctor.py -ItemType File  

New-Item src\loom\commands\login.py -ItemType File  

  

# Core modules  

mkdir src\loom\core  

New-Item src\loom\core\__init__.py -ItemType File  

New-Item src\loom\core\catalog.py -ItemType File  

New-Item src\loom\core\installer.py -ItemType File  

New-Item src\loom\core\validator.py -ItemType File  

New-Item src\loom\core\targets.py -ItemType File  

  

# Licensing modules  

# mkdir src\loom\licensing  

# New-Item src\loom\licensing\__init__.py -ItemType File  

# New-Item src\loom\licensing\gate.py -ItemType File  

# New-Item src\loom\licensing\verifier.py -ItemType File  

# New-Item src\loom\licensing\store.py -ItemType File  

  

# Skills (bundled payload) — the four launch skills  

mkdir src\loom\skills  

New-Item src\loom\skills\__init__.py -ItemType File  

  

$skills = @(  

"python-coding-standards",  

"csharp-dotnet-standards",  

"react-frontend",  

"token-optimization"  

)  

foreach ($s in $skills) {  

mkdir "src\loom\skills\$s"  

mkdir "src\loom\skills\$s\references"  

mkdir "src\loom\skills\$s\scripts"  

mkdir "src\loom\skills\$s\assets"  

New-Item "src\loom\skills\$s\SKILL.md" -ItemType File  

}  

  

# Tests  

mkdir tests  

New-Item tests\__init__.py -ItemType File  

New-Item tests\test_cli.py -ItemType File  

New-Item tests\test_validator.py -ItemType File  

  

# VS Code config  

mkdir .vscode  

New-Item .vscode\launch.json -ItemType File  

New-Item .vscode\tasks.json -ItemType File  

New-Item .vscode\settings.json -ItemType File