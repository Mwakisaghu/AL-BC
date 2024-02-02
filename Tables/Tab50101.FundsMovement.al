table 50101 "Funds Movement"
{
    Caption = 'Funds Movement';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No. of Data"; Code[20])
        {
            trigger OnValidate()
            begin

                if "No. of Data" <> xRec."No. of Data" then begin
                    FundsMovement.Get;
                    NoSeriesMgt.TestManual(FundsMovement."Funds Movement Number");
                    "No. Series" := '';
                end;
            end;

        }
        field(2; "Transaction Date"; Date)
        {
            Caption = 'Transaction Date';
        }
        field(3; "Transaction Type"; Code[20])
        {
            Caption = 'Transaction Type';
        }
        field(4; Posted; Boolean)
        {
            Caption = 'Posted';
        }
        field(5; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
        }
        field(6; "Responsibility Centre"; Code[20])
        {
            Caption = 'Responsibility Centre';
        }
        field(7; Remarks; Code[20])
        {
            Caption = 'Remarks';
        }
        field(8; Status; Option)
        {
            OptionMembers = Open,Pending,Approved,Rejected;
            Editable = false;
        }
        field(9; "Created By"; Code[20])
        {
            Caption = 'Created By';
        }
        field(10; "Transaction Time"; Time)
        {
            Caption = 'Transaction Time';
        }
        field(11; "Global Dimension 1"; Code[20])
        {
            Caption = 'Global Dimension 1';
        }
        field(12; "Global Dimension 2"; Code[20])
        {
            Caption = 'Global Dimension 2';
        }
        field(13; "Total Debits"; Decimal)
        {
            Caption = 'Total Debits';
        }
        field(14; "Total Credits"; Decimal)
        {
            Caption = 'Total Credits';
        }
        field(15; "Member No"; Code[20])
        {
            Caption = 'Member No';
        }
        field(16; "Transfer Type"; Option)
        {
            OptionMembers = Self,Other,"Money Transfer";
        }
        field(17; "Rejection Reason"; Text[50])
        {
            Caption = 'Rejection Reason';
        }
    }

    keys
    {
        key(PK; "No. of Data", "No. Series")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin

        if "No. of Data" = '' then begin
            FundsMovement.Get;
            FundsMovement.TestField("Funds Movement Number");
            NoSeriesMgt.InitSeries(FundsMovement."Funds Movement Number", xRec."No. Series", 0D, "No. of Data", "No. Series");
        end;
    end;


    var
        FundsMovement: record FundsMovementSetup;
        NoSeriesMgt: Codeunit NoSeriesManagement;
}
