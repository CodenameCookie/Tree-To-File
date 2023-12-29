# Tree-To-file
PowerShell script to save the tree structure of a project to text file, excluding the inside of `node_modules` directory.

I needed a quick way to generate a text file with the tree scructure of a project.
Since it was primarily for use with AI I wanted the file to exclude the inside of the `node_modules` directory as that can be huge and the contents can be inferred usually anyway from the rest of the project. 

Of course the directory to be truncated in the script can be changed just by replacing `node_modules` with the name of another directory.
The directory will still be listed properly in the tree output in the text file, except the directory will show as empty.

First you need to install `Tree` with a package manager. I recommend Chocolatey as a package manager. 

You can run the PowerShell script from the parent directory containing the PowerShell folder the directory with:
```
.\powershell\tree-exclude_modules.ps1
```
If you get an error about permissions you can temporarily bypass that with: 
```
PowerShell.exe -ExecutionPolicy Bypass -File .\powershell\tree-exclude_modules.ps1  
```
# Tree Text File Content Example
I thought to add an example of how it could look using this rep as an example (got to love being recursive).
This project wouldnt include `node_modules` but this should give you an better idea what this repo does.

```
﻿Folder PATH listing
C:.
|   LICENSE
|   ProjectTreeStructure.txt
|   README.md
|   
\---powershell
        tree-exclude_modules.ps1
```        
