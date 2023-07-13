@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Stock'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_Stock as select from zstock
{
    key productid as Productid,
    key batch as Batch,
    key location as Location,
    quantity as Quantity,
    source_last_changed as SourceLastChanged,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at as LastChangedAt
}
