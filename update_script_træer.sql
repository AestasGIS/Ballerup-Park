SELECT 
  id, 
  jsondata->>'ElementTypeKey' as elementdata, 
  jsondata->'ElementAttributes'->0->>'Key' as key0, 
  jsondata->'ElementAttributes'->0->>'Name' as name0, 
  jsondata->'ElementAttributes'->0->>'Value' as value0
FROM sweco.elementdetails_point 
WHERE jsondata->>'ElementTypeKey' = 'TR' AND jsondata->'ElementAttributes'->0->>'Value' IS NOT NULL

SELECT id, jsondata->>'ElementTypeKey' as elementdata, jsondata FROM sweco.elementdetails_point WHERE jsondata->>'ElementTypeKey' = 'TR'


UPDATE elementer.elementer_punkter t2
SET 
ekstra = 
  ('{'||
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->0->>'Key',  t1.jsondata->'ElementAttributes'->0->>'Name',  t1.jsondata->'ElementAttributes'->0->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->1->>'Key',  t1.jsondata->'ElementAttributes'->1->>'Name',  t1.jsondata->'ElementAttributes'->1->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->2->>'Key',  t1.jsondata->'ElementAttributes'->2->>'Name',  t1.jsondata->'ElementAttributes'->2->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->3->>'Key',  t1.jsondata->'ElementAttributes'->3->>'Name',  t1.jsondata->'ElementAttributes'->3->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->4->>'Key',  t1.jsondata->'ElementAttributes'->4->>'Name',  t1.jsondata->'ElementAttributes'->4->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->5->>'Key',  t1.jsondata->'ElementAttributes'->5->>'Name',  t1.jsondata->'ElementAttributes'->5->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->6->>'Key',  t1.jsondata->'ElementAttributes'->6->>'Name',  t1.jsondata->'ElementAttributes'->6->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->7->>'Key',  t1.jsondata->'ElementAttributes'->7->>'Name',  t1.jsondata->'ElementAttributes'->7->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->9->>'Key',  t1.jsondata->'ElementAttributes'->9->>'Name',  t1.jsondata->'ElementAttributes'->9->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->10->>'Key', t1.jsondata->'ElementAttributes'->10->>'Name', t1.jsondata->'ElementAttributes'->10->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->11->>'Key', t1.jsondata->'ElementAttributes'->11->>'Name', t1.jsondata->'ElementAttributes'->11->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->12->>'Key', t1.jsondata->'ElementAttributes'->12->>'Name', t1.jsondata->'ElementAttributes'->12->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->13->>'Key', t1.jsondata->'ElementAttributes'->13->>'Name', t1.jsondata->'ElementAttributes'->13->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->14->>'Key', t1.jsondata->'ElementAttributes'->14->>'Name', t1.jsondata->'ElementAttributes'->14->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->15->>'Key', t1.jsondata->'ElementAttributes'->15->>'Name', t1.jsondata->'ElementAttributes'->15->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->16->>'Key', t1.jsondata->'ElementAttributes'->16->>'Name', t1.jsondata->'ElementAttributes'->16->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->17->>'Key', t1.jsondata->'ElementAttributes'->17->>'Name', t1.jsondata->'ElementAttributes'->17->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->18->>'Key', t1.jsondata->'ElementAttributes'->18->>'Name', t1.jsondata->'ElementAttributes'->18->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->19->>'Key', t1.jsondata->'ElementAttributes'->19->>'Name', t1.jsondata->'ElementAttributes'->19->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', t1.jsondata->'ElementAttributes'->20->>'Key', t1.jsondata->'ElementAttributes'->20->>'Name', t1.jsondata->'ElementAttributes'->20->>'Value') 
  ||'}')::jsonb
FROM sweco.elementdetails_point t1
WHERE t1.id = t2.id AND t2.etype_key = 'TR';



SELECT 
  id, 
  jsondata->>'ElementTypeKey' as elementdata, 
  ('{'||
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->0->>'Key', jsondata->'ElementAttributes'->0->>'Name', jsondata->'ElementAttributes'->0->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->1->>'Key', jsondata->'ElementAttributes'->1->>'Name', jsondata->'ElementAttributes'->1->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->2->>'Key', jsondata->'ElementAttributes'->2->>'Name', jsondata->'ElementAttributes'->2->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->3->>'Key', jsondata->'ElementAttributes'->3->>'Name', jsondata->'ElementAttributes'->3->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->4->>'Key', jsondata->'ElementAttributes'->4->>'Name', jsondata->'ElementAttributes'->4->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->5->>'Key', jsondata->'ElementAttributes'->5->>'Name', jsondata->'ElementAttributes'->5->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->6->>'Key', jsondata->'ElementAttributes'->6->>'Name', jsondata->'ElementAttributes'->6->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->7->>'Key', jsondata->'ElementAttributes'->7->>'Name', jsondata->'ElementAttributes'->7->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->9->>'Key', jsondata->'ElementAttributes'->9->>'Name', jsondata->'ElementAttributes'->9->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->10->>'Key', jsondata->'ElementAttributes'->10->>'Name', jsondata->'ElementAttributes'->10->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->11->>'Key', jsondata->'ElementAttributes'->11->>'Name', jsondata->'ElementAttributes'->11->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->12->>'Key', jsondata->'ElementAttributes'->12->>'Name', jsondata->'ElementAttributes'->12->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->13->>'Key', jsondata->'ElementAttributes'->13->>'Name', jsondata->'ElementAttributes'->13->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->14->>'Key', jsondata->'ElementAttributes'->14->>'Name', jsondata->'ElementAttributes'->14->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->15->>'Key', jsondata->'ElementAttributes'->15->>'Name', jsondata->'ElementAttributes'->15->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->16->>'Key', jsondata->'ElementAttributes'->16->>'Name', jsondata->'ElementAttributes'->16->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->17->>'Key', jsondata->'ElementAttributes'->17->>'Name', jsondata->'ElementAttributes'->17->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->18->>'Key', jsondata->'ElementAttributes'->18->>'Name', jsondata->'ElementAttributes'->18->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->19->>'Key', jsondata->'ElementAttributes'->19->>'Name', jsondata->'ElementAttributes'->19->>'Value')||','|| 
  format('"%1$s":{"Key":"%1$s","Name":"%2$s","Value":"%3$s"}', jsondata->'ElementAttributes'->20->>'Key', jsondata->'ElementAttributes'->20->>'Name', jsondata->'ElementAttributes'->20->>'Value') 
  ||'}')::jsonb AS ekstra
FROM sweco.elementdetails_point 
WHERE jsondata->>'ElementTypeKey' = 'TR' AND jsondata->'ElementAttributes'->0->>'Value' IS NOT NULL
LIMIT 10

CREATE VIEW elementer.elementer_pkt_tr AS 
SELECT 
  id, 
  etype_key, 
  etype_navn, 
  egruppe_key, 
  egruppe_navn, 
  ebasis_type, 
  navn, 
  hoejde, 
  bredde, 
  ekstra->'AGVT'->>'Value' as att_agvt, 
  ekstra->'AOT1'->>'Value' as att_aot1, 
  ekstra->'BM'->>'Value' as att_bm, 
  ekstra->'LOT'->>'Value' as att_lot, 
  ekstra->'OFT'->>'Value' as att_oft, 
  ekstra->'OT'->>'Value' as att_ot, 
  ekstra->'PL'->>'Value' as att_pl, 
  ekstra->'PlM'->>'Value' as att_plm, 
  ekstra->'PlMt'->>'Value' as att_plmt, 
  ekstra->'PAA'->>'Value' as att_paa, 
  ekstra->'TAD'->>'Value' as att_tad, 
  ekstra->'TAL'->>'Value' as att_tal, 
  ekstra->'TI'->>'Value' as att_ti, 
  ekstra->'TJ'->>'Value' as att_tj, 
  ekstra->'TRS'->>'Value' as att_trs, 
  ekstra->'TRSL'->>'Value' as att_trsl, 
  ekstra->'TSVP'->>'Value' as att_tsvp, 
  ekstra->'TT'->>'Value' as att_tt, 
  ekstra->'UE'->>'Value' as att_ue, 
  ekstra->'UER'->>'Value' as att_uer, 
  ekstra->'VTr'->>'Value' as att_vtr, 
  geom
FROM elementer.elementer_punkter
WHERE etype_key = 'TR'

{
  "Id": "588dad9d-448d-472e-a582-997c7c00fcda",
  "Key": 1345032,
  "Name": "028-00275",
  "Origin": "office",
  "Address": null,
  "Measure": 0.47761490107900234,
  "Distance": 0,
  "Perimeter": 0,
  "Activities": [],
  "Attachments": [],
  "Description": null,
  "GeometryWkt": "LINESTRING(711155.9112359013 6181100.114493902,711156.0426595253 6181100.573671237)",
  "GeometryType": "Line",
  "ElementTypeId": "bc84bd2e-c4de-412c-9ccb-2e2d04ca47e0",
  "ElementTypeKey": "028",
  "ElementTypeName": "Cykelsti Vinterklasse I",
  ->'AGVT'"ElementAttributes": [
    {
      "Id": "76c55931-b1f1-4879-87f4-8ec785d57cbe",
      "Key": "KT",
      "Name": "Kommentar",
      "Unit": "",
      "Value": null,
      "Parent": null,
      "Children": [],
      "DataType": "multiline",
      "ReadOnly": false,
      "Mandatory": false,
      "Description": "",
      "DefaultValue": "",
      "DisplayOrder": 1,
      "ValidationMax": null,
      "ValidationMin": null,
      "ShortDescription": null,
      "ValidationValues": [],
      "ValidationDecimal": null,
      "ValidationErrMessage": "",
      "ValidationExpression": "",
      "ElementAttributeTypeId": "393b68e7-c7f5-494f-bc8c-ca7a41e1577c",
      "ValidationSqlExpression": ""
    },
    {
      "Id": "25a8d79e-84cb-4ff8-ab55-6166fee61c54",
      "Key": "1OPG",
      "Name": "1. Opgave",
      "Unit": "",
      "Value": null,
      "Parent": null,
      "Children": [],
      "DataType": "singleline",
      "ReadOnly": false,
      "Mandatory": false,
      "Description": "Opgaver kunne fx. være: græs slåning, opsamling af affald, gasbrænding, osv.",
      "DefaultValue": "",
      "DisplayOrder": 2,
      "ValidationMax": null,
      "ValidationMin": null,
      "ShortDescription": null,
      "ValidationValues": [],
      "ValidationDecimal": null,
      "ValidationErrMessage": "",
      "ValidationExpression": "",
      "ElementAttributeTypeId": "48515b64-069b-4576-8f04-b229ad52c539",
      "ValidationSqlExpression": ""
    },
    {
      "Id": "2770e2e7-f3c6-4883-ae00-4b69e09edecf",
      "Key": "2OPG",
      "Name": "2. Opgave",
      "Unit": "",
      "Value": null,
      "Parent": null,
      "Children": [],
      "DataType": "singleline",
      "ReadOnly": false,
      "Mandatory": false,
      "Description": "Opgaver kunne fx. være: græs slåning, opsamling af affald, gasbrænding, osv.",
      "DefaultValue": "",
      "DisplayOrder": 3,
      "ValidationMax": null,
      "ValidationMin": null,
      "ShortDescription": null,
      "ValidationValues": [],
      "ValidationDecimal": null,
      "ValidationErrMessage": "",
      "ValidationExpression": "",
      "ElementAttributeTypeId": "28ff2e11-a1b1-40de-a51f-e7d6585d6d0a",
      "ValidationSqlExpression": ""
    },
-        "Description": ""
        },
        {
          "Id": "cfb9295d-0aaa-4715-8c68-0cf39fefc479",
          "Key": "2",
          "Name": "ugentligt",
          "Default": false,
          "ParentId": null,
          "Description": ""
        },
        {
          "Id": "b877ddc9-acc4-49e9-9bcc-118b243cba3e",
          "Key": "7",
          "Name": "årligt",
          "Default": false,
          "ParentId": null,
          "Description": ""
        }
      ],
      "ValidationDecimal": null,
      "ValidationErrMessage": null,
      "ValidationExpression": null,
      "ElementAttributeTypeId": "50a2a1e2-efdd-4eec-9488-1ba9a01743fb",
      "ValidationSqlExpression": null
    },
    {
      "Id": "7fb91c6e-e991-40ab-932c-6107928bc1df",
      "Key": "1FRE",
      "Name": "1. Frekvens",
      "Unit": "",
      "Value": null,
      "Parent": null,
      "Children": [],
      "DataType": "multipleselect",
      "ReadOnly": false,
      "Mandatory": false,
      "Description": "",
      "DefaultValue": "",
      "DisplayOrder": 5,
      "ValidationMax": null,
      "ValidationMin": null,
      "ShortDescription": null,
      "ValidationValues": [
        {
          "Id": "6fd01a57-11e5-41e3-b294-810053d9a65a",
          "Key": "6",
          "Name": "½ årligt",
          "Default": false,
          "ParentId": null,
          "Description": ""
        },
        {
          "Id": "77d08ac9-bb26-4dce-ade6-0771644a2031",
          "Key": "3",
          "Name": "2. uge",
          "Default": false,
          "ParentId": null,
          "Description": ""
        },
        {
          "Id": "bf409598-03a7-460f-8da0-ca4b27f5070f",
          "Key": "5",
          "Name": "3. måned",
          "Default": false,
          "ParentId": null,
          "Description": ""
        },
        {
          "Id": "7d434e75-dd70-4ea5-a1ad-9f55b53f99fa",
          "Key": "1",
          "Name": "dagligt",
          "Default": false,
          "ParentId": null,
          "Description": ""
        },
        {
          "Id": "8f1b7f69-f959-430a-b753-b517287688ef",
          "Key": "4",
          "Name": "mådenligt",
          "Default": false,
          "ParentId": null,
          "Description": ""
        },
        {
          "Id": "7a1745fc-db84-421f-90b9-9a055f8277be",
          "Key": "2",
          "Name": "ugentligt",
          "Default": false,
          "ParentId": null,
          "Description": ""
        },
        {
          "Id": "c80f2437-2340-4bbd-97d7-15b51f8ccc6f",
          "Key": "7",
          "Name": "årligt",
          "Default": false,
          "ParentId": null,
          "Description": ""
        }
      ],
      "ValidationDecimal": null,
      "ValidationErrMessage": null,
      "ValidationExpression": null,
      "ElementAttributeTypeId": "d613d90b-0488-4796-9361-2ab646969d7e",
      "ValidationSqlExpression": null
    }
  ],
  "QualityOperationalAspects": [
    {
      "QualityId": "cc03fd1d-e554-43db-bc8c-9470044e817c",
      "OperationalAspectId": "fafd0d86-b3ee-4488-87de-5035c0092358"
    }
  ],
  "QualityDescriptionsAttachments": [
    {
      "Id": "8803da70-6d29-4641-b053-9ef78133727a",
      "Url": "/Park/api/ballerup/attachment/getAttachment?directory=ballerup%2F52abdd9b-4f9e-4614-bbb1-cbcbcb394336&filename=Vinter.pdf&mimetype=application/pdf",
      "Date": "2017-03-09T13:01:44",
      "Owner": null,
      "Title": "Kvalitetbeskrivelse",
      "Public": false,
      "Status": "",
      "Content": null,
      "Created": "2021-01-18T16:02:43",
      "Updated": null,
      "FileName": "Vinter.pdf",
      "FileSize": 0,
      "MimeType": "application/pdf",
      "CreatedBy": null,
      "UpdatedBy": "",
      "ContentType": "PDF",
      "ThumbnailUrl": "/Park/api/ballerup/attachment/getThumbnail?directory=&filename=Vinter.pdf&mimetype=image/png",
      "BigThumbnailUrl": "/Park/api/ballerup/attachment/getAttachment?directory=ballerup%2F52abdd9b-4f9e-4614-bbb1-cbcbcb394336&filename=Vinter.pdf&mimetype=application/pdf"
    }
  ],
  "QualityDescriptionsExternalLinks": [
    {
      "Link": "",
      "QualityDescriptionId": "ca032ce0-a17e-42cf-8259-3fcec07b9072",
      "QualityDescriptionName": "Vintertjeneste"
    }
  ]
}

Danny Morck <danny.morck@gate21.dk>