$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($IndexJs.FullName)

function New-UDLinkify {
    <#
    .SYNOPSIS
    Creates a new component
    
    .DESCRIPTION
    Creates a new component
    
    .PARAMETER Id
    The ID of this editor

    .PARAMETER Text
    Text for the component

    .EXAMPLE
    New-UDLinkify -Text 'This will auto make links adambacon1@hotmail.com or check https://adam-bacon.netlify.app/'
    #>
    
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$Text
    )

    End {
        @{
            assetId = $AssetId 
            isPlugin = $true 
            type = "udlinkify"
            id = $Id

            text = $Text
        }
    }
}