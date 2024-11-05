program FileTest;

var
  myFile: file of Integer;

begin
  Assign(myFile, 'c:/test.ext'); (*@\label{FileTest-1}@*)
  Rewrite (myFile); (*@\label{FileTest-2}@*)
  Write(myFile, 1); (*@\label{FileTest-3}@*)
  Write(myFile, 2);
  Close(myFile); (*@\label{FileTest-4}@*)
end.
