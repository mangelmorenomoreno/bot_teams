using { GoodsMovementTypeService } from '../../srv/goods-movement-type-service';

annotate GoodsMovementTypeService.GoodsMovementTypes with @(
  title: 'Tipos de movimiento de mercancías',

  Capabilities.InsertRestrictions.Insertable: true,
  Capabilities.UpdateRestrictions.Updatable: true,
  Capabilities.DeleteRestrictions.Deletable: true,
  Capabilities.SearchRestrictions.Searchable: true,

  UI.HeaderInfo: {
    TypeName: 'Tipo de movimiento',
    TypeNamePlural: 'Tipos de movimiento',
    Title: {
      $Type: 'UI.DataField',
      Value: MOVEMENT_CODE
    },
    Description: {
      $Type: 'UI.DataField',
      Value: DESCRIPTION
    }
  },

  UI.SelectionFields: [
    MOVEMENT_CODE,
    SAP_GOODS_MOVEMENT_TYPE,
    SAP_GOODS_MOVEMENT_CODE,
    PLANT,
    ACTIVE
  ],

  UI.LineItem: [
    { $Type: 'UI.DataField', Value: MOVEMENT_CODE, Label: 'Código movimiento' },
    { $Type: 'UI.DataField', Value: SAP_GOODS_MOVEMENT_TYPE, Label: 'Tipo mov. SAP' },
    { $Type: 'UI.DataField', Value: SAP_GOODS_MOVEMENT_CODE, Label: 'Código mov. SAP' },
    { $Type: 'UI.DataField', Value: PLANT, Label: 'Centro' },
    { $Type: 'UI.DataField', Value: DEFAULT_STORAGE_LOCATION, Label: 'Almacén defecto' },
    { $Type: 'UI.DataField', Value: COPA_EXTENSION, Label: 'Extensión CO-PA' },
    { $Type: 'UI.DataField', Value: ACTIVE, Label: 'Activo' },
    { $Type: 'UI.DataField', Value: DESCRIPTION, Label: 'Descripción' }
  ],

  UI.Facets: [
    {
      $Type: 'UI.ReferenceFacet',
      ID: 'General',
      Label: 'Información general',
      Target: '@UI.FieldGroup#General'
    }
  ],

  UI.FieldGroup #General: {
    Data: [
      { $Type: 'UI.DataField', Value: MOVEMENT_CODE, Label: 'Código de movimiento' },
      { $Type: 'UI.DataField', Value: SAP_GOODS_MOVEMENT_TYPE, Label: 'Tipo de movimiento SAP' },
      { $Type: 'UI.DataField', Value: SAP_GOODS_MOVEMENT_CODE, Label: 'Código de movimiento SAP' },
      { $Type: 'UI.DataField', Value: PLANT, Label: 'Centro' },
      { $Type: 'UI.DataField', Value: MATERIAL_DOCUMENT_HEADER_TEXT, Label: 'Texto cabecera documento material' },
      { $Type: 'UI.DataField', Value: DEFAULT_STORAGE_LOCATION, Label: 'Almacén por defecto' },
      { $Type: 'UI.DataField', Value: DEFAULT_ISSUING_RECEIVING_STORAGE_LOC, Label: 'Almacén emisor/receptor por defecto' },
      { $Type: 'UI.DataField', Value: COPA_EXTENSION, Label: 'Extensión CO-PA' },
      { $Type: 'UI.DataField', Value: ACTIVE, Label: 'Activo' },
      { $Type: 'UI.DataField', Value: DESCRIPTION, Label: 'Descripción' }
    ]
  }
);

annotate GoodsMovementTypeService.GoodsMovementTypes with {
  MOVEMENT_CODE
    @title: 'Código de movimiento'
    @Core.Immutable;

  SAP_GOODS_MOVEMENT_TYPE
    @title: 'Tipo de movimiento SAP';

  SAP_GOODS_MOVEMENT_CODE
    @title: 'Código de movimiento SAP';

  PLANT
    @title: 'Centro';

  MATERIAL_DOCUMENT_HEADER_TEXT
    @title: 'Texto cabecera documento material';

  DEFAULT_STORAGE_LOCATION
    @title: 'Almacén por defecto';

  DEFAULT_ISSUING_RECEIVING_STORAGE_LOC
    @title: 'Almacén emisor/receptor por defecto';

  COPA_EXTENSION
    @title: 'Extensión CO-PA';

  ACTIVE
    @title: 'Activo';

  DESCRIPTION
    @title: 'Descripción'
    @UI.MultiLineText: true;
};
