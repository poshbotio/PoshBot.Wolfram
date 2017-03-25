
function Invoke-WolframQuery {
    <#
    .SYNOPSIS
        Asks WolframAlpha a question
    .EXAMPLE
        !askwolfram '34th president of the united states'
    #>
    [PoshBot.BotCommand(CommandName = 'askwolfram')]
    [cmdletbinding()]
    param(
        [PoshBot.FromConfig('ApiKey')]
        [parameter(Mandatory)]
        [string]$ApiKey,

        [parameter(ValueFromRemainingArguments = $true)]
        [string[]]$Arguments
    )

    $q = $Arguments -join ' '
    $url = "http://api.wolframalpha.com/v1/result?i=$q&appid=$ApiKey"
    $r = Invoke-RestMethod -Uri $url
    Write-Output $r
}

Export-ModuleMember -Function 'Invoke-WolframQuery'
