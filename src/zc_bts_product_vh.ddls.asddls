@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Value Help Products'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_BTS_PRODUCT_VH
  as select from ZR_BTS_PRODUCT
{
      @ObjectModel.text.element: [ 'Description' ]
      @EndUserText.label: 'Id Produto'
  key ProductId,
  
      @Semantics.text : true
      @EndUserText.label: 'Descrição Produto'
      Description
}
group by
    ProductId,
    Description
