table 50100 Reward
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; RewardID; Code[30])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Description; Text[250])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; "Dicount Percentage"; Decimal)
        {
            DataClassification = ToBeClassified;
            MinValue = 0;
            MaxValue = 100;
            DecimalPlaces = 2;
        }
        field(4; "Mininmum Purchase"; Decimal)
        {
            DataClassification = ToBeClassified;
            MinValue = 0;
            DecimalPlaces = 2;
        }
        field(5; "Last Modified Date"; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

    }

    keys
    {
        key(PK; RewardID)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        SetLastModifiedDate();
    end;

    trigger OnModify()
    begin
        SetLastModifiedDate();
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin
        SetLastModifiedDate();
    end;

    /// <summary> 
    ///sets date on creation and/or modification
    /// </summary>/// 
    local procedure SetLastModifiedDate();
    begin
        "Last Modified Date" := Today();
    end;

}