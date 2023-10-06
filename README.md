# Wisdom : Découvrez un Nouveau Pays Chaque Jour

## Description

Vous avez déjà rêvé de parcourir le monde, de découvrir des cultures inconnues et des paysages à couper le souffle, mais vous ne savez pas par où commencer ? Wisdom est l'outil parfait pour assouvir cette soif d'aventure et de connaissance! C'est une application web captivante qui vous emmène dans un nouveau pays chaque jour.

## Stack Technique

- Backend: Ruby on Rails 7.0.6
- Frontend: HTML, Tailwind CSS, Stimulus JS
- Database: PostgreSQL
- Déploiement: Heroku

## Installation

```
https://github.com/hugo-magnant/Wisdom.git
cd Wisdom
bundle install
rails db:create db:migrate db:seed
sudo ./bin/dev
```

## Utilisation

Accédez à http://localhost:3000/ pour utiliser l'application.

Pour changer de pays en local il faut utiliser la commande :
```
rake scheduler:update_country

```
