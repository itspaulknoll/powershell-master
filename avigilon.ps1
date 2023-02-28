for (;;)
{
  
if (-not (Get-Process -name dvrclientclrapp_u -ea 0) ) 
{
# If explorer is running, kill it

Stop-Process -ProcessName Explorer

}
	
if (-not (Get-Process -name dvrclientclrapp_u -ea 0) ) 
{
# it's not running, start it
$Avigilon_app = [System.Diagnostics.Process]::Start("C:\program files\avigilon\avigilon control center client\dvrclientclrapp_u.exe")
}



}
 