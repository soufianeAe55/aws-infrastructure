resource "helm_release" "nginx_ingress" {
  name             = "nginx-ingress-controller"
  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "nginx-ingress-controller"
  create_namespace = true
  namespace        = "nginx"

  set = [
    {
      name  = "service.type"
      value = "LoadBalancer"
    },
    {
      name  = "controller.admissionWebhooks.enabled"
      value = "false"
    }
  ]
}