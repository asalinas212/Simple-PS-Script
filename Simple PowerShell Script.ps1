$arr = Get-ChildItem "c:\directory\" | 
       Where-Object {$_.PSIsContainer} | 
       Foreach-Object {$_.Name}
                   
foreach ($value in $arr) 
{
                $fullpath = "z:\"+$value
                if (test-path $fullpath)
                {
                                $A = Get-Date; Add-Content 'C:\logs\transfer.txt' +'@ : '$A' - '$value' Directory already exists.'
                }
                else
                {
                                Copy-Item "c:\directory\$value" "z:\"
                }
}
# Simple-PS-Script

