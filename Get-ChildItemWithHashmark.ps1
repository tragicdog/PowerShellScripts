#find all items in current and sub folders that contain a # in the file name and rename them without the #
Get-ChildItem -path * -filter '*#*' -recurse | rename-item -newname { $_.name -replace '#', ''}