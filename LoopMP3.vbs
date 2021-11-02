Dim count
Set objShell = WScript.CreateObject("WScript.Shell")
Set Player = createobject("Wmplayer.OCX.7") 
Do
               WScript.Sleep 8000
                count = count + 1
                'objShell.Popup count, 2
                Player.url =  "http://image.mrcsurvey.com/custloads/271723802/archive/Silent.mp3"
Loop While count>0
