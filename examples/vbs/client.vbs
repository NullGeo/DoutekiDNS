'begin VBS script code: 

Call LogEntry()

Sub LogEntry()

'Force the script to finish on an error.
On Error Resume Next

'Declare variables
Dim objRequest
Dim URL

'The URL link.
URL = "http://username:password@dyndns.herokuapp.com/api/v1/update"

Set objRequest = CreateObject("Microsoft.XMLHTTP")

'Open the HTTP request and pass the URL to the objRequest object
objRequest.open "GET", URL , false

'Send the HTML Request
objRequest.Send

'Set the object to nothing
Set objRequest = Nothing

End Sub

'end VBS script code