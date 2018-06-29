tableextension 123456707 "CSD SourceCodeSetupExt" extends "Source Code Setup"
//CSD1.00 20180629 MJJ
// Chapter 7 - Lab 1-7
// - Added new fields: 
// - Seminar
{
    fields
    {
        field(132456700;"CSD Seminar"; Code[10]){
            Caption = 'CSD Seminar';
            TableRelation = "Source Code";
        }
    }
    
    var
        myInt : Integer;
}