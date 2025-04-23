@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consuption Order Itens'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZC_BTS_ORDER_IT
  as projection on ZI_BTS_ORDER_IT
{
  key OrderId,
  key Item,
      @ObjectModel.text.element: [ 'Description' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_bts_product_vh', element: 'ProductId' }, useForValidation: true }]
      Product,
      Description,
      Value,
      Currency,
      Quantity,
      SalesPrice,
      UnityMeasure,
      /* Associations */
      _Order: redirected to parent ZC_BTS_ORDER,
      _Product
}
