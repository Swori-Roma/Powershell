# Get-Date -> [datetime] converts [str]'yyyyMM'
$DirName = (Get-Date).ToString('yyyyMM')

# $Path -> The path where a new dir is located
$Path = "C:\Users\tefg5\OneDrive\Work"

# New-Item -> Create Dir with $DirName
For ( $index = 0; $index -lt 12; $index++) {
    [int]$DirName = [int]$DirName + 1
    New-Item -Path $Path -ItemType Directory -Name $DirName
}


