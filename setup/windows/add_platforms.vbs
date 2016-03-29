p = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)

Set objFS = CreateObject("Scripting.FileSystemObject")
strFile = p + "\cordova-js\Gruntfile.js"
strTemp = p + "\out123fer5454ftgtrg4534.tmp"
Set objFile = objFS.GetFile(strFile)
Set objOutFile = objFS.CreateTextFile(strTemp,True)
Set ts = objFile.OpenAsTextStream(1,-2)
Do Until ts.AtEndOfStream
    strLine = ts.ReadLine
	objOutFile.Write(Replace(strLine, "compile: {", "compile: {" + vbCrLf + """sectv-orsay"": {}," + vbCrLf + """sectv-tizen"": {},") + vbCrLf)
Loop
objOutFile.Close
ts.Close
objFS.DeleteFile(strFile)
objFS.MoveFile strTemp,strFile 



strFile = p + "\cordova-js\package.json"
strTemp = p + "\out123fer5454ftgtrr4534.tmp"
Set objFile = objFS.GetFile(strFile)
Set objOutFile = objFS.CreateTextFile(strTemp,True)
Set ts = objFile.OpenAsTextStream(1,-2)
Do Until ts.AtEndOfStream
    strLine = ts.ReadLine
	objOutFile.Write(Replace(strLine, """cordova-platforms"" : {", """cordova-platforms"" : {" + vbCrLf + """cordova-sectv-orsay"": ""../cordova-sectv-orsay""," + vbCrLf + """cordova-sectv-tizen"": ""../cordova-sectv-tizen"",") + vbCrLf)
Loop
objOutFile.Close
ts.Close
objFS.DeleteFile(strFile)
objFS.MoveFile strTemp,strFile 



