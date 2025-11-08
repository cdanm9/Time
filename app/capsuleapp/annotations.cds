using TimeService as service from '../../srv/time-service';
annotate service.Capsules with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Theme',
                Value : theme,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Unlock At',
                Value : unlockAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Emergency',
                Value : isEmergency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Storage Mode',
                Value : storageMode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Created At',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Updated At',
                Value : updatedAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Encypted',
                Value : ckEncrypted,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Capsule Info',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Memories',
            ID : 'Memories',
            Target : 'to_attachments/@UI.LineItem#Memories',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Theme',
            Value : theme,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Unlock At',
            Value : unlockAt,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Is Emergency',
            Value : isEmergency,
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
);

annotate service.Attachments with @(
    UI.LineItem #Memories : [
        {
            $Type : 'UI.DataField',
            Value : cloudPath,
            Label : 'Cloud Path',
        },
        {
            $Type : 'UI.DataField',
            Value : content,
            Label : 'Content',
        },
        {
            $Type : 'UI.DataField',
            Value : duration,
            Label : 'Duration',
        },
        {
            $Type : 'UI.DataField',
            Value : mimeType,
            Label : 'Mime Type',
        },
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'Name',
        },
        {
            $Type : 'UI.DataField',
            Value : localPath,
            Label : 'Local Path',
        },
        {
            $Type : 'UI.DataField',
            Value : size,
            Label : 'Size',
        },
        {
            $Type : 'UI.DataField',
            Value : type,
            Label : 'Type',
        },
    ]
);

