[string]$TaskName = @(191..205) -join '\n'
[string]$TaskId = 29513118

$JsonData = @{"content" = $TaskName } | ConvertTo-Json
    
$RequestParams = @{
    Method  = 'POST'
    Uri     = "https://tokkuri.teamwork.com/tasks/$($TaskId)/quickadd.json"
    Headers = @{ 
        "Authorization" = "Basic dHdwX3A4UWxHTDJPWXhvYnh1RXh0MEtwMFFyRmp6aFE6YQ=="
        "Content-Type"  = "application/json"
    }
    Body    = $JsonData.Replace('\\n', '\n')
}
    
Invoke-WebRequest @RequestParams

# $Jsondata = @{"todo-item" = @{"content" = "Section Quiz"; "positionAfterTask" = 0 } } | ConvertTo-Json

# $RequestParams = @{
#     Method  = 'POST'
#     Uri     = "https://tokkuri.teamwork.com/tasks/$($TaskId).json"
#     Headers = @{ 
#         "Authorization" = "Basic dHdwX3A4UWxHTDJPWXhvYnh1RXh0MEtwMFFyRmp6aFE6YQ=="
#         "Content-Type"  = "application/json"
#     }
#     Body    = $JsonData.Replace('\\n', '\n')
# }

# Invoke-WebRequest @RequestParams