# pptio-good-movement-type

Aplicación CAP + Fiori Elements V4 para administrar la tabla existente **GOODS_MOVEMENT_TYPE_CONFIG** del HDI compartido **pptio-med-db-schema-mgr-hdi**.

## Funcionalidad

- Crear registros
- Editar registros
- Guardar / Cancelar mediante OData V4 Draft
- Eliminar registros
- Buscar, filtrar, ordenar y personalizar la tabla
- Editar todos los campos no llave
- MOVEMENT_CODE es la llave y queda inmutable después de crear el registro

## Tabla

- MOVEMENT_CODE String(20) PK
- SAP_GOODS_MOVEMENT_TYPE String(3)
- SAP_GOODS_MOVEMENT_CODE String(2)
- PLANT String(4)
- MATERIAL_DOCUMENT_HEADER_TEXT String(25)
- DEFAULT_STORAGE_LOCATION String(4)
- DEFAULT_ISSUING_RECEIVING_STORAGE_LOC String(4)
- COPA_EXTENSION Boolean
- ACTIVE Boolean
- DESCRIPTION String(500)

La aplicación **no recrea** GOODS_MOVEMENT_TYPE_CONFIG. La consume mediante synonym desde `pptio-med-db-schema-mgr-hdi`.

## Build

```bash
npm install
npm run build
```

El MTAR esperado queda en:

```text
mta_archives/archive.mtar
```

## Deploy

```bash
cf login
cf target -o "Fundacion Cardio Infantil Instituto de Cardiologia_dev-btp-lacardio" -s dev-btp-lacardio
cf deploy mta_archives/archive.mtar --retries 1
```

Después:

```bash
cf html5-list
cf html5-list -di pptio-good-movement-type-destination-service -u --runtime launchpad
```

## Notas

El backend se publica bajo `/goods-movement-type`.

La destination del backend usa:

- Authentication: NoAuthentication
- HTML5.DynamicDestination: true
- HTML5.ForwardAuthToken: true

Los grants hacia el HDI compartido usan:

- FRAMEWORK_ACCESS_G# para object_owner
- FRAMEWORK_ACCESS para application_user
