#run with Invoke-Pester -Path .\app.Tests.ps1

Describe "League tests" {
    BeforeAll{
        . "$PSScriptRoot\app.ps1" -Force #import script1 with Force to re-load memory
    }
    Context "When teams play a game" {
        It "should Legia win" {
            Select-Winner -Team1 "Legia" -Team2 "Widzew" | Should -be "Legia_21231"
        }
        It "should another win" {
            Select-Winner -Team1 "Other" -Team2 "Widzew" | Should -be "Widzew"
        }
        It "should another win" {
            Select-Winner -Team1 "WER" -Team2 "Widzew" | Should -be "Widzew"
        }
        It "should another win" {
            Select-Winner -Team1 "WER" -Team2 "Widzew" | Should -be "Widzew"
        }
}

}
