# copied from quick start lab

- https://www.qwiklabs.com/focuses/1771?parent=catalog

* create device reg (inc pub/sub tropic?)
* ca cert
* device
* create pub/sub subscription
* run node.js script 
* - send
* - recieve




### Copied material:


Create a device registry
In the Console, click Navigation menu > IoT Core.
d150d0c0b3a46b6c.png

Click Create Registry and set the following fields (you will need to click on the Show Advanced Options button):
Field

Value

Registry ID

my-registry

Region

us-central1

Cloud Pub/Sub Topics

Select a Cloud Pub/Sub Topic

Select the default cloud-builds topic from the drop down.

Device state topic

Leave at the default value

Protocol

MQTT

Add CA certificate

Ignore

Click Create. You should see a similar page once your registry has been successfully created:
199b3cdc4876e41d.png

You've just created a device registry with a Cloud Pub/Sub topic for publishing device telemetry events. In the next section you'll add a device to the registry.

Click Check my progress below to check your lab progress.

Create a device registry.
Add a device to the registry
Click on Devices in the left menu, then click + Create a Device.
Set the following fields:
Field

Value

Device ID

my-device

Device communication

Allow

Authentication

Default value (for now)

Public Key format

Default value (for now)

Public key value

Default value (for now)

Device metadata

Default value

Click Create.
You've just added a device to your registry. The device won't be able to connect to Google Cloud Platform without a valid key.

Click Check my progress below to check your lab progress.

Add a device to the registry.
Add a public key to the device
For your device to transmit telemetry data through the cloud, you must add a key to the device.

Open a Cloud Shell session and run the following command to create an RS256 key:

openssl req -x509 -newkey rsa:2048 -keyout rsa_private.pem -nodes \
    -out rsa_cert.pem -subj "/CN=unused"

Open the Cloud Shell Code Editor by clicking the pencil icon in the top right ribbon:
code-editor.png

In the Cloud Shell Code Editor, you'll see two new files, rsa_cert.pem and rsa_private.pem in the left-hand menu.
db98eae95f2961eb.png

Copy the contents of rsa_cert.pem to the clipboard, include -----BEGIN CERTIFICATE----- and -----END CERTIFICATE-----.

In the console, on the Authentication tab for the device you created, click Add public key.

Enter the following values:

Field

Value

Input method

Enter manually

Public key format

RS256_X509

Public key value

Paste contents of rsa_cert.pem

Public key expiration date

Default value

Click Add.
2cd56c265fc86093.png

An RS256_X509 key is now listed for your device.

Click Check my progress below to check your lab progress.

Add a public key to the device
Run a Node.js sample to connect a virtual device and view telemetry
Return to your Code Editor tab, which has your Cloud Shell session loaded to run the following steps.

In Cloud Shell run the following, replacing <YOUR_PROJECT_ID> with your Qwiklabs Google Cloud Project ID:

export PROJECT_ID=<YOUR_PROJECT_ID>

gcloud config set project $PROJECT_ID

Next, get the Cloud IoT Core Node.js samples from GitHub by cloning the full Node.js repository.

Enter the following to clone the repo:

git clone https://github.com/GoogleCloudPlatform/nodejs-docs-samples

Navigate to the Cloud IoT Core samples in the iot directory.

cd nodejs-docs-samples/iot/mqtt_example

You'll complete the rest of these steps in this directory.

Copy the private key to the current working directory:

cp ../../../rsa_private.pem .

In the command line, install the Node.js dependencies:

npm install

Run the following command to create a subscription:

gcloud pubsub subscriptions create \
    projects/$PROJECT_ID/subscriptions/my-subscription \
    --topic=projects/$PROJECT_ID/topics/cloud-builds

Click Check my progress below to check your lab progress.

create a subscription.
Run the following command to connect a virtual device to Cloud IoT Core using the MQTT bridge:

node cloudiot_mqtt_example_nodejs.js mqttDeviceDemo --projectId=$PROJECT_ID \
  --registryId=my-registry --deviceId=my-device \
  --privateKeyFile=rsa_private.pem --algorithm=RS256 \
  --cloudRegion=us-central1 --numMessages=25

The output shows that the sample device is publishing messages to the telemetry topic. Twenty-five messages are published.

Run the following command to read the messages published to the telemetry topic:

gcloud pubsub subscriptions pull --auto-ack \
    projects/$PROJECT_ID/subscriptions/my-subscription

Repeat the subscriptions pull command to view additional messages.

You created a Cloud IoT Core device registry connected a device and published device telemetry events.
