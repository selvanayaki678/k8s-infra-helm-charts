resource "kubernetes_namespace" "sonar-ns" {
  metadata {

    labels = {
      app = "sonarqube"
    }

    name = "sonarqube"
  }
}
resource "kubernetes_deployment" "sonarqube-deployment" {
  metadata {
    name = "sonarqube-deployment"
    labels = {
      app = "sonarqube"
    }
    namespace = "sonarqube"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "sonarqube"
      }
    }

    template {
      metadata {
        labels = {
          app = "sonarqube"
        }
      }

      spec {
        container {
          image = "sonarqube:latest"
          name  = "sonarqube"

          
        }
      }
    }
  }
  depends_on = [ kubernetes_namespace.sonar-ns ]
}
resource "kubernetes_service" "sonarqube-svc" {
  metadata {
    name = "sonarqube-svc"
    namespace = "sonarqube"
  }
  spec {
    selector = {
        app = "sonarqube"
    }   
    port {
      port        = 9000
      target_port = 9000
    }

    type = "LoadBalancer"
  }
  depends_on = [ kubernetes_namespace.sonar-ns,kubernetes_deployment.sonarqube-deployment ]
}