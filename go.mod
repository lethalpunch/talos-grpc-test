module sampletalos

go 1.22.1

replace (
	// forked coredns so we don't carry caddy and other stuff into the Talos
	github.com/coredns/coredns => github.com/siderolabs/coredns v1.11.52
	// Use nested module.
	github.com/siderolabs/talos/pkg/machinery => ./pkg/machinery

	// forked go-yaml that introduces RawYAML interface, which can be used to populate YAML fields using bytes
	// which are then encoded as a valid YAML blocks with proper indentiation
	gopkg.in/yaml.v3 => github.com/unix4ever/yaml v0.0.0-20220527175918-f17b0f05cf2c
)

require (
	cloud.google.com/go v0.112.1 // indirect
	cloud.google.com/go/accessapproval v1.7.5 // indirect
	cloud.google.com/go/accesscontextmanager v1.8.5 // indirect
	cloud.google.com/go/aiplatform v1.62.0 // indirect
	cloud.google.com/go/analytics v0.23.0 // indirect
	cloud.google.com/go/apigateway v1.6.5 // indirect
	cloud.google.com/go/apigeeconnect v1.6.5 // indirect
	cloud.google.com/go/apigeeregistry v0.8.3 // indirect
	cloud.google.com/go/appengine v1.8.5 // indirect
	cloud.google.com/go/area120 v0.8.5 // indirect
	cloud.google.com/go/artifactregistry v1.14.7 // indirect
	cloud.google.com/go/asset v1.17.2 // indirect
	cloud.google.com/go/assuredworkloads v1.11.5 // indirect
	cloud.google.com/go/automl v1.13.5 // indirect
	cloud.google.com/go/baremetalsolution v1.2.4 // indirect
	cloud.google.com/go/batch v1.8.1 // indirect
	cloud.google.com/go/beyondcorp v1.0.4 // indirect
	cloud.google.com/go/bigquery v1.59.1 // indirect
	cloud.google.com/go/billing v1.18.3 // indirect
	cloud.google.com/go/binaryauthorization v1.8.1 // indirect
	cloud.google.com/go/certificatemanager v1.7.5 // indirect
	cloud.google.com/go/channel v1.17.5 // indirect
	cloud.google.com/go/cloudbuild v1.15.1 // indirect
	cloud.google.com/go/clouddms v1.7.4 // indirect
	cloud.google.com/go/cloudtasks v1.12.6 // indirect
	cloud.google.com/go/compute v1.24.0 // indirect
	cloud.google.com/go/contactcenterinsights v1.13.0 // indirect
	cloud.google.com/go/container v1.32.0 // indirect
	cloud.google.com/go/containeranalysis v0.11.4 // indirect
	cloud.google.com/go/datacatalog v1.19.3 // indirect
	cloud.google.com/go/dataflow v0.9.5 // indirect
	cloud.google.com/go/dataform v0.9.2 // indirect
	cloud.google.com/go/datafusion v1.7.5 // indirect
	cloud.google.com/go/datalabeling v0.8.5 // indirect
	cloud.google.com/go/dataplex v1.14.2 // indirect
	cloud.google.com/go/dataproc/v2 v2.4.0 // indirect
	cloud.google.com/go/dataqna v0.8.5 // indirect
	cloud.google.com/go/datastore v1.15.0 // indirect
	cloud.google.com/go/datastream v1.10.4 // indirect
	cloud.google.com/go/deploy v1.17.1 // indirect
	cloud.google.com/go/dialogflow v1.49.0 // indirect
	cloud.google.com/go/dlp v1.11.2 // indirect
	cloud.google.com/go/documentai v1.26.0 // indirect
	cloud.google.com/go/domains v0.9.5 // indirect
	cloud.google.com/go/edgecontainer v1.1.5 // indirect
	cloud.google.com/go/errorreporting v0.3.0 // indirect
	cloud.google.com/go/essentialcontacts v1.6.6 // indirect
	cloud.google.com/go/eventarc v1.13.4 // indirect
	cloud.google.com/go/filestore v1.8.1 // indirect
	cloud.google.com/go/firestore v1.14.0 // indirect
	cloud.google.com/go/functions v1.16.0 // indirect
	cloud.google.com/go/gkebackup v1.3.5 // indirect
	cloud.google.com/go/gkeconnect v0.8.5 // indirect
	cloud.google.com/go/gkehub v0.14.5 // indirect
	cloud.google.com/go/gkemulticloud v1.1.1 // indirect
	cloud.google.com/go/gsuiteaddons v1.6.5 // indirect
	cloud.google.com/go/iam v1.1.6 // indirect
	cloud.google.com/go/iap v1.9.4 // indirect
	cloud.google.com/go/ids v1.4.5 // indirect
	cloud.google.com/go/iot v1.7.5 // indirect
	cloud.google.com/go/kms v1.15.7 // indirect
	cloud.google.com/go/language v1.12.3 // indirect
	cloud.google.com/go/lifesciences v0.9.5 // indirect
	cloud.google.com/go/logging v1.9.0 // indirect
	cloud.google.com/go/longrunning v0.5.5 // indirect
	cloud.google.com/go/managedidentities v1.6.5 // indirect
	cloud.google.com/go/maps v1.7.0 // indirect
	cloud.google.com/go/mediatranslation v0.8.5 // indirect
	cloud.google.com/go/memcache v1.10.5 // indirect
	cloud.google.com/go/metastore v1.13.4 // indirect
	cloud.google.com/go/monitoring v1.18.0 // indirect
	cloud.google.com/go/networkconnectivity v1.14.4 // indirect
	cloud.google.com/go/networkmanagement v1.9.4 // indirect
	cloud.google.com/go/networksecurity v0.9.5 // indirect
	cloud.google.com/go/notebooks v1.11.3 // indirect
	cloud.google.com/go/optimization v1.6.3 // indirect
	cloud.google.com/go/orchestration v1.9.0 // indirect
	cloud.google.com/go/orgpolicy v1.12.1 // indirect
	cloud.google.com/go/osconfig v1.12.5 // indirect
	cloud.google.com/go/oslogin v1.13.1 // indirect
	cloud.google.com/go/phishingprotection v0.8.5 // indirect
	cloud.google.com/go/policytroubleshooter v1.10.3 // indirect
	cloud.google.com/go/privatecatalog v0.9.5 // indirect
	cloud.google.com/go/pubsub v1.36.2 // indirect
	cloud.google.com/go/pubsublite v1.8.1 // indirect
	cloud.google.com/go/recaptchaenterprise/v2 v2.10.0 // indirect
	cloud.google.com/go/recommendationengine v0.8.5 // indirect
	cloud.google.com/go/recommender v1.12.1 // indirect
	cloud.google.com/go/redis v1.14.2 // indirect
	cloud.google.com/go/resourcemanager v1.9.5 // indirect
	cloud.google.com/go/resourcesettings v1.6.5 // indirect
	cloud.google.com/go/retail v1.16.0 // indirect
	cloud.google.com/go/run v1.3.4 // indirect
	cloud.google.com/go/scheduler v1.10.6 // indirect
	cloud.google.com/go/secretmanager v1.11.5 // indirect
	cloud.google.com/go/security v1.15.5 // indirect
	cloud.google.com/go/securitycenter v1.26.0 // indirect
	cloud.google.com/go/servicedirectory v1.11.4 // indirect
	cloud.google.com/go/shell v1.7.5 // indirect
	cloud.google.com/go/spanner v1.57.0 // indirect
	cloud.google.com/go/speech v1.22.0 // indirect
	cloud.google.com/go/storagetransfer v1.10.4 // indirect
	cloud.google.com/go/talent v1.6.6 // indirect
	cloud.google.com/go/texttospeech v1.7.5 // indirect
	cloud.google.com/go/tpu v1.6.5 // indirect
	cloud.google.com/go/trace v1.10.5 // indirect
	cloud.google.com/go/translate v1.10.1 // indirect
	cloud.google.com/go/video v1.20.4 // indirect
	cloud.google.com/go/videointelligence v1.11.5 // indirect
	cloud.google.com/go/vision/v2 v2.8.0 // indirect
	cloud.google.com/go/vmmigration v1.7.5 // indirect
	cloud.google.com/go/vmwareengine v1.1.1 // indirect
	cloud.google.com/go/vpcaccess v1.7.5 // indirect
	cloud.google.com/go/webrisk v1.9.5 // indirect
	cloud.google.com/go/websecurityscanner v1.6.5 // indirect
	cloud.google.com/go/workflows v1.12.4 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	golang.org/x/net v0.21.0 // indirect
	golang.org/x/sys v0.17.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	google.golang.org/genproto v0.0.0-20240308144416-29370a3891b7 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20240308144416-29370a3891b7 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20240308144416-29370a3891b7 // indirect
	google.golang.org/grpc v1.62.0 // indirect
	google.golang.org/protobuf v1.32.0 // indirect
)
