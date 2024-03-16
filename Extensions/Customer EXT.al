tableextension 50101 "Customer EXT" extends Customer
{
    fields
    {
        field(50100; "Reward ID"; Code[20])
        {
            TableRelation = Reward.RewardID;
            ValidateTableRelation = true;
            DataClassification = ToBeClassified;
            trigger onvalidate()
            begin
                if (rec."Reward ID" <> xRec."Reward ID") and (rec.Blocked <> rec.blocked::" ") then begin
                    Error('Cannot update when customer is blocked');
                end;
            end;
        }
        field(10001; RewardPoints; Integer)
        {
            MinValue = 0;
        }
    }

    var
        myInt: Integer;
}