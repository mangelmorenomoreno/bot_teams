using { schemamgr } from '../db/schema';

@path: '/goods-movement-type'
@(requires: 'authenticated-user')
service GoodsMovementTypeService {

  @odata.draft.enabled
  entity GoodsMovementTypes as projection on schemamgr.GOODS_MOVEMENT_TYPE_CONFIG;
}
