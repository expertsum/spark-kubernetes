# spark-kubernetes

Kubernetes yaml files + scripts to create a Spark cluster on Google Kubernetes Engine.

## Requirements

- GKE cluster version 1.9.6-gke.1
- 1 service account key to access GCS data from the cluster pods
- 1 GCE persistent disk to store jupyter notebooks

## Instructions
### 1. Create project on the Google Cloud Platform
### 2. Create cluster on Google Kubernetes Engine
### 3. Export [service account json key](https://cloud.google.com/dataproc/docs/concepts/connectors/install-storage-connector) to a file named `gcskey.json` on the repository directory
### 4. Configure kubectl command line access by running the following command:

```$ gcloud container clusters get-credentials cluster-1 --zone [Zone ID] --project [Project ID]```

### 5. Create Compute Engine Disk named `spark-cluster-notebooks` on the same project and the same zone as the cluster

### 6. Create the cluster by running the following command:

```
$ ./create-cluster.sh
```