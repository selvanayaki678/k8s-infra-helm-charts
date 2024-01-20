# Helm charts Deployment in EKS with Terraform using Jenkins CICD

This Jenkins pipeline automates the deployment of below resources into an Amazon EKS cluster using Terraform. The pipeline includes the deployment of the following resources:

1. **Nginx Ingress Controller Helm Chart:**
   - The Nginx Ingress Controller is crucial for enabling and managing Ingress resources in the EKS cluster.
   - Helm chart for Nginx Ingress Controller can be found [here](https://github.com/kubernetes/ingress-nginx/releases).

2. **Prometheus Helm Chart:**
   - Prometheus is utilized for monitoring and analyzing the performance of the application.
   - The official Helm chart for Prometheus was not downloaded. Instead, follow the setup instructions [here](https://devopscube.com/setup-prometheus-monitoring-on-kubernetes).

3. **Kube State Metrics Helm Chart:**
   - Kube State Metrics (KSM) provides metrics about the state of Kubernetes objects in the cluster.
   - Referred this link to setup Kube State Metrics. https://devopscube.com/setup-kube-state-metrics/

4. **SonarQube:**
   - SonarQube is a static code analysis tool for assessing code quality.
   - Deploying SonarQube server as a pod and exposing it as publicly accessible.


## Terraform Execution in Jenkins:
  - Jenkinsfile that includes the Terraform steps for deploying the Nginx Ingress Controller, Prometheus, and SonarQube to an Amazon EKS cluster. 
  - In Terraform, utilizing the Kubernetes and Helm providers facilitates the deployment of resources into an Amazon EKS cluster. The Helm and Kubernetes provider enables the deployment of the Nginx Ingress Controller, Prometheus, and SonarQube into the specified Kubernetes environment.
    ![image](https://github.com/selvanayaki678/employee-portal-crud/assets/67256407/808cbf64-5a21-4c7e-9033-4454652fc9fb)

    
1. **terraform init:**
   - Initialize the Terraform working directory.

2. **Terraform Plan:**
   - Generate and show an execution plan.

3. **terraform apply:**
   - Apply the changes as per the Terraform plan.
## Helm deployment to EKS with screenshots
**Nginx Ingress Controller**
![image](https://github.com/selvanayaki678/employee-portal-crud/assets/67256407/a49cb77d-6add-4b7f-877c-515181c630d4)

**Prometheus**
![image](https://github.com/selvanayaki678/employee-portal-crud/assets/67256407/5338cedb-e25c-4766-9b7f-3aa2717da332)

**Sonarqube**
![image](https://github.com/selvanayaki678/employee-portal-crud/assets/67256407/100e77cb-78ba-4bf4-83c8-3035236d9a9f)
