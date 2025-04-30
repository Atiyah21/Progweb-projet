Schéma du projet:

![Applikube](images/schema.png)

Nous avons une gateway ingress permettant de rediriger le traffic vers les bons services.
![Applikube](images/ingress.png)

Chaque service a un pod et il y'a aussi un pod pour la base postgres qui sera utilisée.

![Applikube](images/pods.png)

Le premier service propose une page web à /login, connectée à une base PostgreSQL initialisée automatiquement, permettant de tester l’authentification d’utilisateurs via une interface simple.
Ce service est disponible sous une image docker sur dockerhub: https://hub.docker.com/r/atiyah/service_login

![Applikube](images/form.png)
![Applikube](images/bienvenue.png)

Le deuxième service est une page affichant Hello World à /hello disponible à: https://hub.docker.com/r/navdeep00/service2

![Applikube](images/Service2.png)

