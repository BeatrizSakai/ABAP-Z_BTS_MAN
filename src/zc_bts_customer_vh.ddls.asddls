@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Value Help Customer'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_BTS_CUSTOMER_VH as select from ztbts_customer
{
        @ObjectModel.text.element: [ 'Name' ]
        @EndUserText.label: 'Id Cliente'
    key customer_id as CustomerId,
    
    @Semantics.text: true
    @EndUserText.label: 'Nome Cliente'
    name as Name
}
group by
    customer_id,
    name
