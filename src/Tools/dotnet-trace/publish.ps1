$path = "$PSScriptRoot\dotnet-trace.csproj"
dotnet publish $path -c Release -r win-x64 --self-contained -p:PublishSingleFile=true -o win
dotnet publish $path -c Release -r linux-x64 --self-contained -p:PublishSingleFile=true -o linux
Move-Item win\daniel-trace.exe, linux\daniel-trace $PSScriptRoot -Force
Remove-Item win, linux -Recurse -Force