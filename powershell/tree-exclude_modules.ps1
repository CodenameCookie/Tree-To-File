$nodeModulesFound = $false
Tree /F /A | ForEach-Object {
    if ($_ -match '^\|   \+---node_modules$') {
        # When node_modules is found, set flag to true and output the line
        $nodeModulesFound = $true
        $_
    }
    elseif ($nodeModulesFound -and $_ -match '^\|   \+---') {
        # If another directory at the same level as node_modules is found, reset the flag
        $nodeModulesFound = $false
    }

    # Output the line if it's not under node_modules
    if (-not $nodeModulesFound) {
        $_
    }
} > ProjectTreeStructure.txt