# Span

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**parentId** | **String** |  | [optional] 
**callId** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**label** | **String** |  | [optional] 
**start** | **Int64** |  | [optional] 
**duration** | **Int64** |  | [optional] 
**calculatedSelfTime** | **Int64** |  | [optional] 
**errorCount** | **Int** |  | [optional] 
**batchSize** | **Int** |  | [optional] 
**batchSelfTime** | **Int64** |  | [optional] 
**kind** | **String** |  | 
**isSynthetic** | **Bool** |  | [optional] 
**data** | **[String:Any]** |  | 
**source** | [**SpanRelation**](SpanRelation.md) |  | [optional] 
**destination** | [**SpanRelation**](SpanRelation.md) |  | [optional] 
**stackTrace** | [StackTraceItem] |  | 
**childSpans** | [Span] |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


