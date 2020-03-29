# Swift5 API client for InstanaClient

## Agent REST API
### Event SDK REST Web Service
Using the Event SDK REST Web Service, it is possible to integrate custom health checks and other event sources into Instana. Each one running the Instana Agent can be used to feed in manual events. The agent has an endpoint which listens on `http://localhost:42699/com.instana.plugin.generic.event` and accepts the following JSON via a POST request:

```json
{
    \"title\": <string>,
    \"text\": <string>,
    \"severity\": <integer> , -1, 5 or 10
    \"timestamp\": <integer>, timestamp in milliseconds from epoch
    \"duration\": <integer>, duration in milliseconds
}
```

*Title* and *text* are used for display purposes.

*Severity* is an optional integer of -1, 5 and 10. A value of -1 or EMPTY will generate a Change. A value of 5 will generate a *warning Issue*, and a value of 10 will generate a *critical Issue*.

When absent, the event is treated as a change without severity. *Timestamp* is the timestamp of the event, but it is optional, in which case the current time is used. *Duration* can be used to mark a timespan for the event. It also is optional, in which case the event will be marked as \"instant\" rather than \"from-to.\"

The endpoint also accepts a batch of events, which then need to be given as an array:

```json
[
    {
    // event as above
    },
    {
    // event as above
    }
]
```

#### Ruby Example

```ruby
duration = (Time.now.to_f * 1000).floor - deploy_start_time_in_ms
payload = {}
payload[:title] = 'Deployed MyApp'
payload[:text] = 'pglombardo deployed MyApp@revision'
payload[:duration] = duration

uri = URI('http://localhost:42699/com.instana.plugin.generic.event')
req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
req.body = payload.to_json
Net::HTTP.start(uri.hostname, uri.port) do |http|
    http.request(req)
end
```

#### Curl Example

```bash
curl -XPOST http://localhost:42699/com.instana.plugin.generic.event -H \"Content-Type: application/json\" -d '{\"title\":\"Custom API Events \", \"text\": \"Failure Redeploying Service Duration\", \"duration\": 5000, \"severity\": -1}'
```

#### PowerShell Example

For Powershell you can either use the standard Cmdlets `Invoke-WebRequest` or `Invoke-RestMethod`. The parameters to be provided are basically the same.

```bash
Invoke-RestMethod
    -Uri http://localhost:42699/com.instana.plugin.generic.event
    -Method POST
    -Body '{\"title\":\"PowerShell Event \", \"text\": \"You used PowerShell to create this event!\", \"duration\": 5000, \"severity\": -1}'
```

```bash
Invoke-WebRequest
    -Uri http://localhost:42699/com.instana.plugin.generic.event
    -Method Post
    -Body '{\"title\":\"PowerShell Event \", \"text\": \"You used PowerShell to create this event!\", \"duration\": 5000, \"severity\": -1}'
```
## Backend REST API
The Instana API allows retrieval and configuration of key data points. Among others, this API enables automatic reaction and further analysis of identified incidents as well as reporting capabilities.

The API documentation referes to two crucial parameters that you need to know about before reading further:
base: This is the base URL of a tenant unit, e.g. `https://test-example.instana.io`. This is the same URL that is used to access the Instana user interface.
apiToken: Requests against the Instana API require valid API tokens. An initial API token can be generated via the Instana user interface. Any additional API tokens can be generated via the API itself.

### Example
Here is an Example to use the REST API with Curl. First lets get all the available metrics with possible aggregations with a GET call.

```bash
curl --request GET \\
  --url https://test-instana.instana.io/api/application-monitoring/catalog/metrics \\
  --header 'authorization: apiToken xxxxxxxxxxxxxxxx'
```

Next we can get every call grouped by the endpoint name that has an error count greater then zero. As a metric we could get the mean error rate for example.

```bash
curl --request POST \\
  --url https://test-instana.instana.io/api/application-monitoring/analyze/call-groups \\
  --header 'authorization: apiToken xxxxxxxxxxxxxxxx' \\
  --header 'content-type: application/json' \\
  --data '{
  \"group\":{
      \"groupbyTag\":\"endpoint.name\"
  },
  \"tagFilters\":[
   {
    \"name\":\"call.error.count\",
    \"value\":\"0\",
    \"operator\":\"GREATER_THAN\"
   }
  ],
  \"metrics\":[
   {
    \"metric\":\"errors\",
    \"aggregation\":\"MEAN\"
   }
  ]
  }'
```


### Rate Limiting
A rate limit is applied to API usage. Up to 5,000 calls per hour can be made. How many remaining calls can be made and when this call limit resets, can inspected via three headers that are part of the responses of the API server.

**X-RateLimit-Limit:** Shows the maximum number of calls that may be executed per hour.

**X-RateLimit-Remaining:** How many calls may still be executed within the current hour.

**X-RateLimit-Reset:** Time when the remaining calls will be reset to the limit. For compatibility reasons with other rate limited APIs, this date is not the date in milliseconds, but instead in seconds since 1970-01-01T00:00:00+00:00.

## Generating REST API clients

The API is specified using the [OpenAPI v3](https://github.com/OAI/OpenAPI-Specification) (previously known as Swagger) format. You can download the current specification at our [GitHub API documentation](https://instana.github.io/openapi/openapi.yaml).

OpenAPI tries to solve the issue of ever-evolving APIs and clients lagging behind. To generate a client library for your language, you can use the [OpenAPI client generators](https://github.com/OpenAPITools/openapi-generator).

To generate a client library for Go to interact with our backend, you can use the following script (you need a JDK and `wget`):

```bash
//Download the generator to your current working directory:
wget http://central.maven.org/maven2/org/openapitools/openapi-generator-cli/3.2.3/openapi-generator-cli-3.2.3.jar -O openapi-generator-cli.jar

//generate a client library that you can vendor into your repository
java -jar openapi-generator-cli.jar generate -i https://instana.github.io/openapi/openapi.yaml -g go \\
    -o pkg/instana/openapi \\
    --skip-validate-spec

//(optional) format the Go code according to the Go code standard
gofmt -s -w pkg/instana/openapi
```

The generated clients contain comprehensive READMEs. To use the client from the example above, you can start right away:

```go
import instana \"./pkg/instana/openapi\"

// readTags will read all available application monitoring tags along with their type and category
func readTags() {
 configuration := instana.NewConfiguration()
 configuration.Host = \"tenant-unit.instana.io\"
 configuration.BasePath = \"https://tenant-unit.instana.io\"

 client := instana.NewAPIClient(configuration)
 auth := context.WithValue(context.Background(), instana.ContextAPIKey, instana.APIKey{
  Key:    apiKey,
  Prefix: \"apiToken\",
 })

 tags, _, err := client.ApplicationCatalogApi.GetTagsForApplication(auth)
 if err != nil {
  fmt.Fatalf(\"Error calling the API, aborting.\")
 }

 for _, tag := range tags {
  fmt.Printf(\"%s (%s): %s\\n\", tag.Category, tag.Type, tag.Name)
 }
}
```


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec from a remote server, you can easily generate an API client.

- API version: 1.173.690
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [http://instana.com](http://instana.com)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://unit-tenant.instana.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*APITokenAPI* | [**deleteApiToken**](docs/APITokenAPI.md#deleteapitoken) | **DELETE** /api/settings/api-tokens/{apiTokenId} | Delete API token
*APITokenAPI* | [**getApiToken**](docs/APITokenAPI.md#getapitoken) | **GET** /api/settings/api-tokens/{apiTokenId} | API token
*APITokenAPI* | [**getApiTokens**](docs/APITokenAPI.md#getapitokens) | **GET** /api/settings/api-tokens | All API tokes
*APITokenAPI* | [**putApiToken**](docs/APITokenAPI.md#putapitoken) | **PUT** /api/settings/api-tokens/{apiTokenId} | Create or update an API token
*ApplicationAnalyzeAPI* | [**getCallGroup**](docs/ApplicationAnalyzeAPI.md#getcallgroup) | **POST** /api/application-monitoring/analyze/call-groups | Get grouped call metrics
*ApplicationAnalyzeAPI* | [**getTrace**](docs/ApplicationAnalyzeAPI.md#gettrace) | **GET** /api/application-monitoring/analyze/traces/{id} | Get trace detail
*ApplicationAnalyzeAPI* | [**getTraceGroups**](docs/ApplicationAnalyzeAPI.md#gettracegroups) | **POST** /api/application-monitoring/analyze/trace-groups | Get grouped trace metrics
*ApplicationAnalyzeAPI* | [**getTraces**](docs/ApplicationAnalyzeAPI.md#gettraces) | **POST** /api/application-monitoring/analyze/traces | Get all traces
*ApplicationCatalogAPI* | [**getApplicationCatalogMetrics**](docs/ApplicationCatalogAPI.md#getapplicationcatalogmetrics) | **GET** /api/application-monitoring/catalog/metrics | Get Metric catalog
*ApplicationCatalogAPI* | [**getApplicationCatalogTags**](docs/ApplicationCatalogAPI.md#getapplicationcatalogtags) | **GET** /api/application-monitoring/catalog/tags | Get filter tag catalog
*ApplicationMetricsAPI* | [**getApplicationMetrics**](docs/ApplicationMetricsAPI.md#getapplicationmetrics) | **POST** /api/application-monitoring/metrics/applications | Get Application Metrics
*ApplicationMetricsAPI* | [**getEndpointsMetrics**](docs/ApplicationMetricsAPI.md#getendpointsmetrics) | **POST** /api/application-monitoring/metrics/endpoints | Get Endpoint metrics
*ApplicationMetricsAPI* | [**getServicesMetrics**](docs/ApplicationMetricsAPI.md#getservicesmetrics) | **POST** /api/application-monitoring/metrics/services | Get Service metrics
*ApplicationResourcesAPI* | [**applicationResourcesEndpoints**](docs/ApplicationResourcesAPI.md#applicationresourcesendpoints) | **GET** /api/application-monitoring/applications/services/endpoints | Get endpoints
*ApplicationResourcesAPI* | [**getApplicationServices**](docs/ApplicationResourcesAPI.md#getapplicationservices) | **GET** /api/application-monitoring/applications/services | Get applications/services
*ApplicationResourcesAPI* | [**getApplications**](docs/ApplicationResourcesAPI.md#getapplications) | **GET** /api/application-monitoring/applications | Get applications
*ApplicationResourcesAPI* | [**getServices**](docs/ApplicationResourcesAPI.md#getservices) | **GET** /api/application-monitoring/services | Get services
*ApplicationSettingsAPI* | [**addApplicationConfig**](docs/ApplicationSettingsAPI.md#addapplicationconfig) | **POST** /api/application-monitoring/settings/application | Add application configuration
*ApplicationSettingsAPI* | [**addServiceConfig**](docs/ApplicationSettingsAPI.md#addserviceconfig) | **POST** /api/application-monitoring/settings/service | Add service configuration
*ApplicationSettingsAPI* | [**createEndpointConfig**](docs/ApplicationSettingsAPI.md#createendpointconfig) | **POST** /api/application-monitoring/settings/http-endpoint | Create endpoint configuration
*ApplicationSettingsAPI* | [**deleteApplicationConfig**](docs/ApplicationSettingsAPI.md#deleteapplicationconfig) | **DELETE** /api/application-monitoring/settings/application/{id} | Delete application configuration
*ApplicationSettingsAPI* | [**deleteEndpointConfig**](docs/ApplicationSettingsAPI.md#deleteendpointconfig) | **DELETE** /api/application-monitoring/settings/http-endpoint/{id} | Delete endpoint configuration
*ApplicationSettingsAPI* | [**deleteServiceConfig**](docs/ApplicationSettingsAPI.md#deleteserviceconfig) | **DELETE** /api/application-monitoring/settings/service/{id} | Delete service configuration
*ApplicationSettingsAPI* | [**getApplicationConfig**](docs/ApplicationSettingsAPI.md#getapplicationconfig) | **GET** /api/application-monitoring/settings/application/{id} | Application configuration
*ApplicationSettingsAPI* | [**getApplicationConfigs**](docs/ApplicationSettingsAPI.md#getapplicationconfigs) | **GET** /api/application-monitoring/settings/application | All Application configurations
*ApplicationSettingsAPI* | [**getEndpointConfig**](docs/ApplicationSettingsAPI.md#getendpointconfig) | **GET** /api/application-monitoring/settings/http-endpoint/{id} | Endpoint configuration
*ApplicationSettingsAPI* | [**getEndpointConfigs**](docs/ApplicationSettingsAPI.md#getendpointconfigs) | **GET** /api/application-monitoring/settings/http-endpoint | All Endpoint configurations
*ApplicationSettingsAPI* | [**getServiceConfig**](docs/ApplicationSettingsAPI.md#getserviceconfig) | **GET** /api/application-monitoring/settings/service/{id} | Service configuration
*ApplicationSettingsAPI* | [**getServiceConfigs**](docs/ApplicationSettingsAPI.md#getserviceconfigs) | **GET** /api/application-monitoring/settings/service | All service configurations
*ApplicationSettingsAPI* | [**orderServiceConfig**](docs/ApplicationSettingsAPI.md#orderserviceconfig) | **PUT** /api/application-monitoring/settings/service/order | Order of service configuration
*ApplicationSettingsAPI* | [**putApplicationConfig**](docs/ApplicationSettingsAPI.md#putapplicationconfig) | **PUT** /api/application-monitoring/settings/application/{id} | Update application configuration
*ApplicationSettingsAPI* | [**putServiceConfig**](docs/ApplicationSettingsAPI.md#putserviceconfig) | **PUT** /api/application-monitoring/settings/service/{id} | Update service configuration
*ApplicationSettingsAPI* | [**updateEndpointConfig**](docs/ApplicationSettingsAPI.md#updateendpointconfig) | **PUT** /api/application-monitoring/settings/http-endpoint/{id} | Update endpoint configuration
*AuditLogAPI* | [**getAuditLogs**](docs/AuditLogAPI.md#getauditlogs) | **GET** /api/settings/auditlog | Audit log
*DefaultAPI* | [**createSourceMapConfig**](docs/DefaultAPI.md#createsourcemapconfig) | **POST** /api/website-monitoring/config/{websiteId}/sourceMap | 
*DefaultAPI* | [**delete**](docs/DefaultAPI.md#delete) | **DELETE** /api/events/settings/website-alert-configs/{id} | 
*DefaultAPI* | [**deleteSourceMapConfig**](docs/DefaultAPI.md#deletesourcemapconfig) | **DELETE** /api/website-monitoring/config/{websiteId}/sourceMap/{sourceMapConfigId} | 
*DefaultAPI* | [**disable**](docs/DefaultAPI.md#disable) | **PUT** /api/events/settings/website-alert-configs/{id}/disable | 
*DefaultAPI* | [**enable**](docs/DefaultAPI.md#enable) | **PUT** /api/events/settings/website-alert-configs/{id}/enable | 
*DefaultAPI* | [**getSourceMapConfig**](docs/DefaultAPI.md#getsourcemapconfig) | **GET** /api/website-monitoring/config/{websiteId}/sourceMap/{sourceMapConfigId} | 
*DefaultAPI* | [**getSourceMapConfigs**](docs/DefaultAPI.md#getsourcemapconfigs) | **GET** /api/website-monitoring/config/{websiteId}/sourceMap | 
*DefaultAPI* | [**updateSourceMapConfig**](docs/DefaultAPI.md#updatesourcemapconfig) | **PUT** /api/website-monitoring/config/{websiteId}/sourceMap/{sourceMapConfigId} | 
*EventSettingsAPI* | [**create**](docs/EventSettingsAPI.md#create) | **POST** /api/events/settings/website-alert-configs | Create Website Alert Config
*EventSettingsAPI* | [**deleteAlert**](docs/EventSettingsAPI.md#deletealert) | **DELETE** /api/events/settings/alerts/{id} | Delete alerting
*EventSettingsAPI* | [**deleteAlertingChannel**](docs/EventSettingsAPI.md#deletealertingchannel) | **DELETE** /api/events/settings/alertingChannels/{id} | Delete alerting channel
*EventSettingsAPI* | [**deleteBuiltInEventSpecification**](docs/EventSettingsAPI.md#deletebuiltineventspecification) | **DELETE** /api/events/settings/event-specifications/built-in/{eventSpecificationId} | Delete built-in event specification
*EventSettingsAPI* | [**deleteCustomEventSpecification**](docs/EventSettingsAPI.md#deletecustomeventspecification) | **DELETE** /api/events/settings/event-specifications/custom/{eventSpecificationId} | Delete custom event specification
*EventSettingsAPI* | [**disableBuiltInEventSpecification**](docs/EventSettingsAPI.md#disablebuiltineventspecification) | **POST** /api/events/settings/event-specifications/built-in/{eventSpecificationId}/disable | Disable built-in event specification
*EventSettingsAPI* | [**disableCustomEventSpecification**](docs/EventSettingsAPI.md#disablecustomeventspecification) | **POST** /api/events/settings/event-specifications/custom/{eventSpecificationId}/disable | Disable custom event specification
*EventSettingsAPI* | [**enableBuiltInEventSpecification**](docs/EventSettingsAPI.md#enablebuiltineventspecification) | **POST** /api/events/settings/event-specifications/built-in/{eventSpecificationId}/enable | Enable built-in event specification
*EventSettingsAPI* | [**enableCustomEventSpecification**](docs/EventSettingsAPI.md#enablecustomeventspecification) | **POST** /api/events/settings/event-specifications/custom/{eventSpecificationId}/enable | Enable custom event specification
*EventSettingsAPI* | [**find**](docs/EventSettingsAPI.md#find) | **GET** /api/events/settings/website-alert-configs/{id} | Get Website Alert Config
*EventSettingsAPI* | [**findAllActive**](docs/EventSettingsAPI.md#findallactive) | **GET** /api/events/settings/website-alert-configs | All Website Alert Configs
*EventSettingsAPI* | [**findVersions**](docs/EventSettingsAPI.md#findversions) | **GET** /api/events/settings/website-alert-configs/{id}/versions | Get versions of Website Alert Config
*EventSettingsAPI* | [**getAlert**](docs/EventSettingsAPI.md#getalert) | **GET** /api/events/settings/alerts/{id} | Alerting
*EventSettingsAPI* | [**getAlertingChannel**](docs/EventSettingsAPI.md#getalertingchannel) | **GET** /api/events/settings/alertingChannels/{id} | Alerting channel
*EventSettingsAPI* | [**getAlertingChannels**](docs/EventSettingsAPI.md#getalertingchannels) | **GET** /api/events/settings/alertingChannels | All alerting channels
*EventSettingsAPI* | [**getAlertingConfigurationInfos**](docs/EventSettingsAPI.md#getalertingconfigurationinfos) | **GET** /api/events/settings/alerts/infos | All alerting configuration info
*EventSettingsAPI* | [**getAlerts**](docs/EventSettingsAPI.md#getalerts) | **GET** /api/events/settings/alerts | All Alerting
*EventSettingsAPI* | [**getBuiltInEventSpecification**](docs/EventSettingsAPI.md#getbuiltineventspecification) | **GET** /api/events/settings/event-specifications/built-in/{eventSpecificationId} | Built-in event specifications
*EventSettingsAPI* | [**getBuiltInEventSpecifications**](docs/EventSettingsAPI.md#getbuiltineventspecifications) | **GET** /api/events/settings/event-specifications/built-in | All built-in event specification
*EventSettingsAPI* | [**getCustomEventSpecification**](docs/EventSettingsAPI.md#getcustomeventspecification) | **GET** /api/events/settings/event-specifications/custom/{eventSpecificationId} | Custom event specification
*EventSettingsAPI* | [**getCustomEventSpecifications**](docs/EventSettingsAPI.md#getcustomeventspecifications) | **GET** /api/events/settings/event-specifications/custom | All custom event specifications
*EventSettingsAPI* | [**getEventSpecificationInfos**](docs/EventSettingsAPI.md#geteventspecificationinfos) | **GET** /api/events/settings/event-specifications/infos | Summary of all built-in and custom event specifications
*EventSettingsAPI* | [**getEventSpecificationInfosByIds**](docs/EventSettingsAPI.md#geteventspecificationinfosbyids) | **POST** /api/events/settings/event-specifications/infos | All built-in and custom event specifications
*EventSettingsAPI* | [**getSystemRules**](docs/EventSettingsAPI.md#getsystemrules) | **GET** /api/events/settings/event-specifications/custom/systemRules | All system rules for custom event specifications
*EventSettingsAPI* | [**putAlert**](docs/EventSettingsAPI.md#putalert) | **PUT** /api/events/settings/alerts/{id} | Update alerting
*EventSettingsAPI* | [**putAlertingChannel**](docs/EventSettingsAPI.md#putalertingchannel) | **PUT** /api/events/settings/alertingChannels/{id} | Update alerting channel
*EventSettingsAPI* | [**putCustomEventSpecification**](docs/EventSettingsAPI.md#putcustomeventspecification) | **PUT** /api/events/settings/event-specifications/custom/{eventSpecificationId} | Update custom event specification
*EventSettingsAPI* | [**sendTestAlerting**](docs/EventSettingsAPI.md#sendtestalerting) | **PUT** /api/events/settings/alertingChannels/test | Test alerting channel
*EventSettingsAPI* | [**update**](docs/EventSettingsAPI.md#update) | **POST** /api/events/settings/website-alert-configs/{id} | Update Website Alert Config
*EventsAPI* | [**getEvent**](docs/EventsAPI.md#getevent) | **GET** /api/events/{eventId} | Get Event
*EventsAPI* | [**getEvents**](docs/EventsAPI.md#getevents) | **GET** /api/events | Get alerts
*HealthAPI* | [**getHealthState**](docs/HealthAPI.md#gethealthstate) | **GET** /api/instana/health | Basic health traffic light
*HealthAPI* | [**getVersion**](docs/HealthAPI.md#getversion) | **GET** /api/instana/version | API version information
*InfrastructureCatalogAPI* | [**getInfrastructureCatalogMetrics**](docs/InfrastructureCatalogAPI.md#getinfrastructurecatalogmetrics) | **GET** /api/infrastructure-monitoring/catalog/metrics/{plugin} | Get metric catalog
*InfrastructureCatalogAPI* | [**getInfrastructureCatalogPlugins**](docs/InfrastructureCatalogAPI.md#getinfrastructurecatalogplugins) | **GET** /api/infrastructure-monitoring/catalog/plugins | Get plugin catalog
*InfrastructureCatalogAPI* | [**getInfrastructureCatalogSearchFields**](docs/InfrastructureCatalogAPI.md#getinfrastructurecatalogsearchfields) | **GET** /api/infrastructure-monitoring/catalog/search | get search field catalog
*InfrastructureMetricsAPI* | [**getInfrastructureMetrics**](docs/InfrastructureMetricsAPI.md#getinfrastructuremetrics) | **POST** /api/infrastructure-monitoring/metrics | Get infrastructure metrics
*InfrastructureMetricsAPI* | [**getSnapshot**](docs/InfrastructureMetricsAPI.md#getsnapshot) | **GET** /api/infrastructure-monitoring/snapshots/{id} | Get snapshot details
*InfrastructureMetricsAPI* | [**getSnapshots**](docs/InfrastructureMetricsAPI.md#getsnapshots) | **GET** /api/infrastructure-monitoring/snapshots | Search snapshots
*InfrastructureResourcesAPI* | [**getInfrastructureViewTree**](docs/InfrastructureResourcesAPI.md#getinfrastructureviewtree) | **GET** /api/infrastructure-monitoring/graph/views | Get view tree
*InfrastructureResourcesAPI* | [**getMonitoringState**](docs/InfrastructureResourcesAPI.md#getmonitoringstate) | **GET** /api/infrastructure-monitoring/monitoring-state | Monitored host count
*InfrastructureResourcesAPI* | [**getRelatedHosts**](docs/InfrastructureResourcesAPI.md#getrelatedhosts) | **GET** /api/infrastructure-monitoring/graph/related-hosts/{snapshotId} | Related hosts
*InfrastructureResourcesAPI* | [**softwareVersions**](docs/InfrastructureResourcesAPI.md#softwareversions) | **GET** /api/infrastructure-monitoring/software/versions | Get installed software
*MaintenanceConfigurationAPI* | [**deleteMaintenanceConfig**](docs/MaintenanceConfigurationAPI.md#deletemaintenanceconfig) | **DELETE** /api/settings/maintenance/{id} | Delete maintenance configuration
*MaintenanceConfigurationAPI* | [**getMaintenanceConfig**](docs/MaintenanceConfigurationAPI.md#getmaintenanceconfig) | **GET** /api/settings/maintenance/{id} | Maintenance configuration
*MaintenanceConfigurationAPI* | [**getMaintenanceConfigs**](docs/MaintenanceConfigurationAPI.md#getmaintenanceconfigs) | **GET** /api/settings/maintenance | All maintenance configurations
*MaintenanceConfigurationAPI* | [**putMaintenanceConfig**](docs/MaintenanceConfigurationAPI.md#putmaintenanceconfig) | **PUT** /api/settings/maintenance/{id} | Create or update maintenance configuration
*ReleasesAPI* | [**deleteRelease**](docs/ReleasesAPI.md#deleterelease) | **DELETE** /api/releases/{releaseId} | Delete release
*ReleasesAPI* | [**getAllReleases**](docs/ReleasesAPI.md#getallreleases) | **GET** /api/releases | Get all releases
*ReleasesAPI* | [**getRelease**](docs/ReleasesAPI.md#getrelease) | **GET** /api/releases/{releaseId} | Get release
*ReleasesAPI* | [**postRelease**](docs/ReleasesAPI.md#postrelease) | **POST** /api/releases | Create release
*ReleasesAPI* | [**putRelease**](docs/ReleasesAPI.md#putrelease) | **PUT** /api/releases/{releaseId} | Update release
*SyntheticCallsAPI* | [**deleteSyntheticCall**](docs/SyntheticCallsAPI.md#deletesyntheticcall) | **DELETE** /api/settings/synthetic-calls | Delete synthetic call configurations
*SyntheticCallsAPI* | [**getSyntheticCalls**](docs/SyntheticCallsAPI.md#getsyntheticcalls) | **GET** /api/settings/synthetic-calls | Synthetic call configurations
*SyntheticCallsAPI* | [**updateSyntheticCall**](docs/SyntheticCallsAPI.md#updatesyntheticcall) | **PUT** /api/settings/synthetic-calls | Update synthetic call configurations
*UsageAPI* | [**getAllUsage**](docs/UsageAPI.md#getallusage) | **GET** /api/instana/usage/api | API usage by customer
*UsageAPI* | [**getHostsPerDay**](docs/UsageAPI.md#gethostsperday) | **GET** /api/instana/usage/hosts/{day}/{month}/{year} | Host count day / month / year
*UsageAPI* | [**getHostsPerMonth**](docs/UsageAPI.md#gethostspermonth) | **GET** /api/instana/usage/hosts/{month}/{year} | Host count month / year
*UsageAPI* | [**getUsagePerDay**](docs/UsageAPI.md#getusageperday) | **GET** /api/instana/usage/api/{day}/{month}/{year} | API usage day / month / year
*UsageAPI* | [**getUsagePerMonth**](docs/UsageAPI.md#getusagepermonth) | **GET** /api/instana/usage/api/{month}/{year} | API usage month / year
*UserAPI* | [**deleteRole**](docs/UserAPI.md#deleterole) | **DELETE** /api/settings/roles/{roleId} | Delete role
*UserAPI* | [**getInvitations**](docs/UserAPI.md#getinvitations) | **GET** /api/settings/users/invitations | All pending invitations
*UserAPI* | [**getRole**](docs/UserAPI.md#getrole) | **GET** /api/settings/roles/{roleId} | Role
*UserAPI* | [**getRoles**](docs/UserAPI.md#getroles) | **GET** /api/settings/roles | All roles
*UserAPI* | [**getUsers**](docs/UserAPI.md#getusers) | **GET** /api/settings/users | All users (without invitations)
*UserAPI* | [**getUsersIncludingInvitations**](docs/UserAPI.md#getusersincludinginvitations) | **GET** /api/settings/users/overview | All users (incl. invitations)
*UserAPI* | [**putRole**](docs/UserAPI.md#putrole) | **PUT** /api/settings/roles/{roleId} | Create or update role
*UserAPI* | [**removeUserFromTenant**](docs/UserAPI.md#removeuserfromtenant) | **DELETE** /api/settings/users/{userId} | Remove user from tenant
*UserAPI* | [**revokePendingInvitations**](docs/UserAPI.md#revokependinginvitations) | **DELETE** /api/settings/users/invitations | Revoke pending invitation
*UserAPI* | [**sendInvitation**](docs/UserAPI.md#sendinvitation) | **POST** /api/settings/users/invitations | Send user invitation
*UserAPI* | [**setRole**](docs/UserAPI.md#setrole) | **PUT** /api/settings/users/{userId}/role | Add user to role
*WebsiteAnalyzeAPI* | [**getBeaconGroups**](docs/WebsiteAnalyzeAPI.md#getbeacongroups) | **POST** /api/website-monitoring/analyze/beacon-groups | Get grouped beacon metrics
*WebsiteAnalyzeAPI* | [**getBeacons**](docs/WebsiteAnalyzeAPI.md#getbeacons) | **POST** /api/website-monitoring/analyze/beacons | Get all beacons
*WebsiteCatalogAPI* | [**getWebsiteCatalogMetrics**](docs/WebsiteCatalogAPI.md#getwebsitecatalogmetrics) | **GET** /api/website-monitoring/catalog/metrics | Metric catalog
*WebsiteCatalogAPI* | [**getWebsiteCatalogTags**](docs/WebsiteCatalogAPI.md#getwebsitecatalogtags) | **GET** /api/website-monitoring/catalog/tags | Filter tag catalog
*WebsiteConfigurationAPI* | [**callGet**](docs/WebsiteConfigurationAPI.md#callget) | **GET** /api/website-monitoring/config | Get configured websites
*WebsiteConfigurationAPI* | [**delete1**](docs/WebsiteConfigurationAPI.md#delete1) | **DELETE** /api/website-monitoring/config/{websiteId} | Remove website
*WebsiteConfigurationAPI* | [**post**](docs/WebsiteConfigurationAPI.md#post) | **POST** /api/website-monitoring/config | Configure new website
*WebsiteConfigurationAPI* | [**rename**](docs/WebsiteConfigurationAPI.md#rename) | **PUT** /api/website-monitoring/config/{websiteId} | Rename website
*WebsiteMetricsAPI* | [**getBeaconMetrics**](docs/WebsiteMetricsAPI.md#getbeaconmetrics) | **POST** /api/website-monitoring/metrics | Get beacon metrics
*WebsiteMetricsAPI* | [**getPageLoad**](docs/WebsiteMetricsAPI.md#getpageload) | **GET** /api/website-monitoring/page-load | Get page load


## Documentation For Models

 - [AbstractIntegration](docs/AbstractIntegration.md)
 - [AbstractRule](docs/AbstractRule.md)
 - [AlertingConfiguration](docs/AlertingConfiguration.md)
 - [AlertingConfigurationWithLastUpdated](docs/AlertingConfigurationWithLastUpdated.md)
 - [ApiToken](docs/ApiToken.md)
 - [AppDataMetricConfiguration](docs/AppDataMetricConfiguration.md)
 - [Application](docs/Application.md)
 - [ApplicationConfig](docs/ApplicationConfig.md)
 - [ApplicationItem](docs/ApplicationItem.md)
 - [ApplicationMetricResult](docs/ApplicationMetricResult.md)
 - [ApplicationResult](docs/ApplicationResult.md)
 - [AuditLogEntry](docs/AuditLogEntry.md)
 - [AuditLogResponse](docs/AuditLogResponse.md)
 - [BeaconGroupsResult](docs/BeaconGroupsResult.md)
 - [BeaconResult](docs/BeaconResult.md)
 - [BinaryOperatorDTO](docs/BinaryOperatorDTO.md)
 - [BuiltInEventSpecification](docs/BuiltInEventSpecification.md)
 - [BuiltInEventSpecificationWithLastUpdated](docs/BuiltInEventSpecificationWithLastUpdated.md)
 - [CallGroupsItem](docs/CallGroupsItem.md)
 - [CallGroupsResult](docs/CallGroupsResult.md)
 - [CloudfoundryPhysicalContext](docs/CloudfoundryPhysicalContext.md)
 - [ConfigVersion](docs/ConfigVersion.md)
 - [Connection](docs/Connection.md)
 - [CursorPagination](docs/CursorPagination.md)
 - [CustomEventSpecification](docs/CustomEventSpecification.md)
 - [CustomEventSpecificationWithLastUpdated](docs/CustomEventSpecificationWithLastUpdated.md)
 - [EmailIntegration](docs/EmailIntegration.md)
 - [Endpoint](docs/Endpoint.md)
 - [EndpointItem](docs/EndpointItem.md)
 - [EndpointMetricResult](docs/EndpointMetricResult.md)
 - [EndpointResult](docs/EndpointResult.md)
 - [EntityVerificationRule](docs/EntityVerificationRule.md)
 - [EventFilteringConfiguration](docs/EventFilteringConfiguration.md)
 - [EventResult](docs/EventResult.md)
 - [EventSpecificationInfo](docs/EventSpecificationInfo.md)
 - [FixedHttpPathSegmentMatchingRule](docs/FixedHttpPathSegmentMatchingRule.md)
 - [FullTrace](docs/FullTrace.md)
 - [GetApplications](docs/GetApplications.md)
 - [GetCallGroups](docs/GetCallGroups.md)
 - [GetCombinedMetrics](docs/GetCombinedMetrics.md)
 - [GetEndpoints](docs/GetEndpoints.md)
 - [GetServices](docs/GetServices.md)
 - [GetTraceGroups](docs/GetTraceGroups.md)
 - [GetTraces](docs/GetTraces.md)
 - [GetWebsiteBeaconGroups](docs/GetWebsiteBeaconGroups.md)
 - [GetWebsiteBeacons](docs/GetWebsiteBeacons.md)
 - [GetWebsiteMetrics](docs/GetWebsiteMetrics.md)
 - [GoogleChatIntegration](docs/GoogleChatIntegration.md)
 - [Group](docs/Group.md)
 - [HealthState](docs/HealthState.md)
 - [HistoricBaseline](docs/HistoricBaseline.md)
 - [HttpEndpointConfig](docs/HttpEndpointConfig.md)
 - [HttpEndpointRule](docs/HttpEndpointRule.md)
 - [HttpPathSegmentMatchingRule](docs/HttpPathSegmentMatchingRule.md)
 - [HyperParam](docs/HyperParam.md)
 - [InfrastructureMetricResult](docs/InfrastructureMetricResult.md)
 - [IngestionOffsetCursor](docs/IngestionOffsetCursor.md)
 - [InstanaVersionInfo](docs/InstanaVersionInfo.md)
 - [KubernetesPhysicalContext](docs/KubernetesPhysicalContext.md)
 - [LogEntryActor](docs/LogEntryActor.md)
 - [MaintenanceConfig](docs/MaintenanceConfig.md)
 - [MaintenanceConfigWithLastUpdated](docs/MaintenanceConfigWithLastUpdated.md)
 - [MaintenanceWindow](docs/MaintenanceWindow.md)
 - [MatchAllHttpPathSegmentMatchingRule](docs/MatchAllHttpPathSegmentMatchingRule.md)
 - [MetricConfiguration](docs/MetricConfiguration.md)
 - [MetricDescription](docs/MetricDescription.md)
 - [MetricInstance](docs/MetricInstance.md)
 - [MetricItem](docs/MetricItem.md)
 - [MonitoringState](docs/MonitoringState.md)
 - [Office365Integration](docs/Office365Integration.md)
 - [OpsgenieIntegration](docs/OpsgenieIntegration.md)
 - [Order](docs/Order.md)
 - [PagerdutyIntegration](docs/PagerdutyIntegration.md)
 - [Pagination](docs/Pagination.md)
 - [PathParameterHttpPathSegmentMatchingRule](docs/PathParameterHttpPathSegmentMatchingRule.md)
 - [PhysicalContext](docs/PhysicalContext.md)
 - [PluginResult](docs/PluginResult.md)
 - [PrometheusWebhookIntegration](docs/PrometheusWebhookIntegration.md)
 - [Release](docs/Release.md)
 - [ReleaseWithMetadata](docs/ReleaseWithMetadata.md)
 - [Role](docs/Role.md)
 - [RuleInput](docs/RuleInput.md)
 - [SearchFieldResult](docs/SearchFieldResult.md)
 - [Service](docs/Service.md)
 - [ServiceConfig](docs/ServiceConfig.md)
 - [ServiceItem](docs/ServiceItem.md)
 - [ServiceMatchingRule](docs/ServiceMatchingRule.md)
 - [ServiceMetricResult](docs/ServiceMetricResult.md)
 - [ServiceResult](docs/ServiceResult.md)
 - [SlackIntegration](docs/SlackIntegration.md)
 - [SlownessWebsiteAlertRule](docs/SlownessWebsiteAlertRule.md)
 - [SnapshotItem](docs/SnapshotItem.md)
 - [SnapshotPreview](docs/SnapshotPreview.md)
 - [SnapshotResult](docs/SnapshotResult.md)
 - [SoftwareUser](docs/SoftwareUser.md)
 - [SoftwareVersion](docs/SoftwareVersion.md)
 - [Span](docs/Span.md)
 - [SpanRelation](docs/SpanRelation.md)
 - [SpecificJsErrorsWebsiteAlertRule](docs/SpecificJsErrorsWebsiteAlertRule.md)
 - [SplunkIntegration](docs/SplunkIntegration.md)
 - [StackTraceItem](docs/StackTraceItem.md)
 - [StackTraceLine](docs/StackTraceLine.md)
 - [StaticThreshold](docs/StaticThreshold.md)
 - [StatusCodeWebsiteAlertRule](docs/StatusCodeWebsiteAlertRule.md)
 - [SyntheticCallConfig](docs/SyntheticCallConfig.md)
 - [SyntheticCallRule](docs/SyntheticCallRule.md)
 - [SyntheticCallWithDefaultsConfig](docs/SyntheticCallWithDefaultsConfig.md)
 - [SystemRule](docs/SystemRule.md)
 - [SystemRuleLabel](docs/SystemRuleLabel.md)
 - [Tag](docs/Tag.md)
 - [TagFilter](docs/TagFilter.md)
 - [TagMatcherDTO](docs/TagMatcherDTO.md)
 - [Threshold](docs/Threshold.md)
 - [ThresholdRule](docs/ThresholdRule.md)
 - [TimeFrame](docs/TimeFrame.md)
 - [Trace](docs/Trace.md)
 - [TraceGroupsItem](docs/TraceGroupsItem.md)
 - [TraceGroupsResult](docs/TraceGroupsResult.md)
 - [TraceItem](docs/TraceItem.md)
 - [TraceResult](docs/TraceResult.md)
 - [TreeNode](docs/TreeNode.md)
 - [TreeNodeResult](docs/TreeNodeResult.md)
 - [UnsupportedHttpPathSegmentMatchingRule](docs/UnsupportedHttpPathSegmentMatchingRule.md)
 - [UsageResult](docs/UsageResult.md)
 - [UsageResultItems](docs/UsageResultItems.md)
 - [UserImpactWebsiteTimeThreshold](docs/UserImpactWebsiteTimeThreshold.md)
 - [UserResult](docs/UserResult.md)
 - [UsersResult](docs/UsersResult.md)
 - [ValidatedAlertingChannelInputInfo](docs/ValidatedAlertingChannelInputInfo.md)
 - [ValidatedAlertingConfiguration](docs/ValidatedAlertingConfiguration.md)
 - [ValidatedMaintenanceConfigWithStatus](docs/ValidatedMaintenanceConfigWithStatus.md)
 - [VictorOpsIntegration](docs/VictorOpsIntegration.md)
 - [ViolationsInPeriodWebsiteTimeThreshold](docs/ViolationsInPeriodWebsiteTimeThreshold.md)
 - [ViolationsInSequenceWebsiteTimeThreshold](docs/ViolationsInSequenceWebsiteTimeThreshold.md)
 - [WebhookIntegration](docs/WebhookIntegration.md)
 - [Website](docs/Website.md)
 - [WebsiteAlertConfig](docs/WebsiteAlertConfig.md)
 - [WebsiteAlertConfigWithMetadata](docs/WebsiteAlertConfigWithMetadata.md)
 - [WebsiteAlertRule](docs/WebsiteAlertRule.md)
 - [WebsiteBeaconGroupsItem](docs/WebsiteBeaconGroupsItem.md)
 - [WebsiteBeaconTagGroup](docs/WebsiteBeaconTagGroup.md)
 - [WebsiteBeaconsItem](docs/WebsiteBeaconsItem.md)
 - [WebsiteMetricResult](docs/WebsiteMetricResult.md)
 - [WebsiteMonitoringBeacon](docs/WebsiteMonitoringBeacon.md)
 - [WebsiteMonitoringMetricDescription](docs/WebsiteMonitoringMetricDescription.md)
 - [WebsiteMonitoringMetricsConfiguration](docs/WebsiteMonitoringMetricsConfiguration.md)
 - [WebsiteTimeThreshold](docs/WebsiteTimeThreshold.md)


## Documentation For Authorization


## ApiKeyAuth

- **Type**: API key
- **API key parameter name**: authorization
- **Location**: HTTP header


## Author

support@instana.com

