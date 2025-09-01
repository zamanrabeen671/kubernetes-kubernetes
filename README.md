# Kubernetes Practice Repository

This repository contains **YAML manifests** for practicing the basics of Kubernetes.  
It focuses on learning how to create and manage core resources like **Pods, ReplicaSets, and Deployments**.

---

## 📝 Summary

- **Pod** → The smallest deployable unit in Kubernetes, representing one or more containers.  
- **ReplicaSet** → Ensures a desired number of identical Pods are running at all times.  
- **Deployment** → Provides declarative updates to Pods and manages ReplicaSets.  
- **Service**  → Exposes Pods inside or outside the cluster with stable networking.  

These manifests are designed to give hands-on experience with Kubernetes workload management and scaling.

---

## 🚀 How to Run

> Prerequisites: a Kubernetes cluster (e.g., **minikube**, **kind**, or cloud-based) and `kubectl` installed.

1. Start a local cluster (example with minikube):
   ```bash
   minikube start
