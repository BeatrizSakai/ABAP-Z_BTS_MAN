@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Value Help Vendor'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_BTS_VENDOR_VH as select from ztbts_vendor
{
        @ObjectModel.text.element: [ 'Name' ]
        @EndUserText.label: 'Id Vendedor'
    key vendor_id as VendorId,
    
    @Semantics.text: true
    @EndUserText.label: 'Nome Vendedor'
    name as Name
}
group by
    vendor_id,
    name
