table 50101 "Reward Level"
{
    Caption = 'Reward Level';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Level; Text[20])
        {
            Caption = 'Level';
            DataClassification = ToBeClassified;
        }
        field(2; "Minimum Reward Points"; Integer)
        {
            Caption = 'Minimum Reward Points';
            DataClassification = ToBeClassified;
            MinValue = 0;
            NotBlank = true;
            trigger OnValidate()
            var
                TempPoints: Integer;
                RewardLevel: Record "Reward Level";
            begin
                tempPoints := "Minimum Reward Points";
                RewardLevel.SetRange("Minimum Reward Points", tempPoints);
                if RewardLevel.FindFirst then
                    Error('Minimum Reward Points must be unique');
            end;
        }
    }
    keys
    {
        key(PK; Level)
        {
            Clustered = true;
        }
        key("Minimum Reward Points"; "Minimum Reward Points") { }
    }
    trigger OnInsert()
    begin
        Validate("Minimum Reward Points");
    end;

    trigger OnModify()
    begin
        Validate("Minimum Reward Points");
    end;
}
