$TestRecordingFile = Join-Path $PSScriptRoot 'Set-StringMbc.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Set-StringMbc' {
    It 'Put' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
