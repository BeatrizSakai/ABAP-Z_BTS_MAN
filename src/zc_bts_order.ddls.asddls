@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consuption Order'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_BTS_ORDER
  provider contract transactional_query as projection on ZI_BTS_ORDER
{
        @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_bts_order_vh', element: 'OrderId' }, useForValidation: true}]
    key Orderid,
    @ObjectModel.text.element: [ 'CustomerName' ]
    @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_bts_customer_vh', element: 'CustomerId' }, useForValidation: true}]
    Customer,
    CustomerName,
    @ObjectModel.text.element: [ 'VendorName' ]
    @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_bts_vendor_vh', element: 'VendorId' }, useForValidation: true}]
    Vendor,
    VendorName,
    @ObjectModel.text.element: [ 'CompanyName' ]
    @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_bts_company_vh', element: 'CompanyId' }, useForValidation: true}]
    Company,
    CompanyName,
    Usnam,
    /* Associations */
    _Itens: redirected to composition child ZC_BTS_ORDER_IT
}
