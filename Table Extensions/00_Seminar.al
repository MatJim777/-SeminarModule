table 123456701 "CSD Seminar"
//CSD 1.00 20180628 MJJ
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
            trigger OnValidate();
            begin
                if "No." <> xRec."No." then begin
                    SeminarSetup.Get;
                    NoSeriesMgt.TestManual(SeminarSetup."Seminar Nos.");
                    "No.Series" := '';
                end;
            end;
        }
        field(20; "Name"; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
            trigger OnValidate();
            begin
                if("Search Name" = UpperCase(xRec.Name)) or("Search Name" = '') then
                    "Search Name" := Name;
            end;
        }
        field(30; "Seminar Duration"; Decimal)
        {
            Caption = 'Seminar Duration';
            DecimalPlaces = 0 : 1;
            DataClassification = ToBeClassified;
        }
        field(40; "Minimum Paricipants"; Integer)
        {
            Caption = 'Minimum Paricipants';
            DataClassification = ToBeClassified;
        }
        field(50; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = ToBeClassified;
        }
        field(60; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
            DataClassification = ToBeClassified;
        }
        field(70; "Blocked"; Boolean)
        {
            Caption = 'Bloked';
            DataClassification = ToBeClassified;
        }
        field(80; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
            DataClassification = ToBeClassified;
        }
        field(90; "Comment"; Boolean)
        {
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
            //CalcFormula=exist("Seminar Comment Line" where ("Table Name" = const("Seminar") ));
        }
        field(100; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
            AutoFormatType = 1;
            DataClassification = ToBeClassified;
        }
        field(110; "Gen.Prd. Posting Group"; code[10])
        {
            Caption = 'Gen.Prd. Posting Group';
            TableRelation = "Gen. Product Posting Group";
            DataClassification = ToBeClassified;
            trigger OnValidate();
            begin
                if (xRec."Gen.Prd. Posting Group" <> "Gen.Prd. Posting Group") then begin
                    if GenProdPostingGroup.ValidateVatProdPostingGroup(GenProdPostingGroup, "Gen.Prd. Posting Group") then
                        Validate("VAT. Prod. Posting Group", GenProdPostingGroup."Def. VAT Prod. Posting Group");
                end;
            end;
        }
        field(120; "VAT. Prod. Posting Group"; code[10])
        {
            Caption = 'VAT. Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
            DataClassification = ToBeClassified;
        }
        field(130; "No.Series"; code[10])
        {
            Caption = 'Seminar Price';
            Editable = false;
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Key1; "Search Name")
        {

        }
    }

    var
        SeminarSetup: Record "CSD Seminar Setup";

        //CSDSeminarCommentLine : Record ""
        Seminar: Record "CSD Seminar";
        GenProdPostingGroup: Record "Gen. Product Posting Group";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        

    trigger OnInsert();
    begin
        if "No." = '' then begin
            SeminarSetup.Get;
            SeminarSetup.TestField("Seminar Nos.");
            NoSeriesMgt.InitSeries(SeminarSetup."Seminar Nos.", xRec."No.Series", 0D, "No.", "No.Series");
        end;

    end;

    trigger OnModify();
    begin
        "Last Date Modified" := Today;
    end;

    trigger OnDelete();
    begin
        //CommentLine.Rest;
        //CommentLine.Setrange("Table Name", CommetLine."Table Name"::Seminar);
        //CommentLine.Setrange("No.", "No.");
        //CommentLine.DeleteAll;
    end;

    trigger OnRename();
    begin
        "Last Date Modified" := Today;
    end;

    procedure AssistEditr():Boolean;
    begin
      with Seminar do begin
        Seminar := Rec;
        SeminarSetup.Get;
        SeminarSetup.TestField("Seminar Nos.");
        if NoSeriesMgt.SelectSeries(SeminarSetup."Seminar Nos.",xRec."No.Series","No.Series") then begin
          NoSeriesMgt.SetSeries("No.");
          Rec := Seminar;
          exit(true);
        end;
      end;    
    end;
}