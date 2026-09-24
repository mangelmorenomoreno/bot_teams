namespace schemamgr;

@cds.persistence.exists
entity GOODS_MOVEMENT_TYPE_CONFIG {
  key MOVEMENT_CODE                         : String(20);
      SAP_GOODS_MOVEMENT_TYPE              : String(3);
      SAP_GOODS_MOVEMENT_CODE              : String(2);
      PLANT                                : String(4);
      MATERIAL_DOCUMENT_HEADER_TEXT         : String(25);
      DEFAULT_STORAGE_LOCATION              : String(4);
      DEFAULT_ISSUING_RECEIVING_STORAGE_LOC : String(4);
      COPA_EXTENSION                        : Boolean;
      ACTIVE                                : Boolean;
      DESCRIPTION                           : String(500);
}
