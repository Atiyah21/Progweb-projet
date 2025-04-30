# 1. Créer les ressources de persistance
kubectl apply -f postgres-pvc.yml

# 2. Déployer PostgreSQL avec le script d'initialisation
kubectl apply -f postgres-deployment.yml

# 3. Attendre que PostgreSQL soit prêt
kubectl wait --for=condition=Ready pod -l app=postgres --timeout=120s

# 4. Déployer les autres services
kubectl apply -f services.yaml
kubectl apply -f services-deployment.yml

