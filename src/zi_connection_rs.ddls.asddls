@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Connection'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@UI.headerInfo: {
    typeName: 'Connection',
    typeNamePlural: 'Connections'
               }
define view entity ZI_CONNECTION_RS
  as select from /dmo/connection as connection
{

@UI.facet: [{ purpose: #STANDARD,
              type: #IDENTIFICATION_REFERENCE,
              position: 10,
              label: 'Connection' }]

      @UI.lineItem: [{ position: 10, label: 'Airline', importance: #HIGH  }]
      @UI.identification: [{ position: 10, label: 'Airline' }]
  key carrier_id      as CarrierId,
      @UI.lineItem: [{ position: 20, importance: #MEDIUM }]
      @UI.identification: [{ position: 20 }]
  key connection_id   as ConnectionId,
      @UI.selectionField: [{ position: 10 }]
      @UI.lineItem: [{ position: 30, importance: #HIGH }]
      @UI.identification: [{ position: 30 }]
      airport_from_id as AirportFromId,
      @UI.selectionField: [{ position: 20 }]
      @UI.lineItem: [{ position: 40, importance: #HIGH }]
      @UI.identification: [{ position: 40 }]
      airport_to_id   as AirportToId,
      @UI.lineItem: [{ position: 50, label: 'Departure Time', importance: #MEDIUM }]
      @UI.identification: [{ position: 50 }]
      departure_time  as DepartureTime,
      @UI.lineItem: [{ position: 60, label: 'Arrival Time', importance: #MEDIUM }]
      @UI.identification: [{ position: 60 }]
      arrival_time    as ArrivalTime,
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      @UI.identification: [{ position: 70 }]
      distance        as Distance,
      @UI.identification: [{ position: 80 }]
      distance_unit   as DistanceUnit

}
