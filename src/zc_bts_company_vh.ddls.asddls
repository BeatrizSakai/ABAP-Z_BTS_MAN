@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Value Help Company'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_BTS_COMPANY_VH as select from ztbts_company
{
        @ObjectModel.text.element: [ 'Name' ]
        @EndUserText.label: 'Id Empresa'
    key company_id as CompanyId,
    
    @Semantics.text : true
    @EndUserText.label: 'Nome Empresa'
    name as Name
}
group by
    company_id,
    name
