# Ekylibre Viti

Module de gestion viticole pour Ekylibre, permettant de gérer :

- Les Déclarations Récapitulatives Mensuelles (DRM)
- Les Documents Simplifiés d'Accompagnement (DSA)
- Les Documents Administratifs Électroniques (DAE)
- La comptabilité matière

## Installation

Ajouter la gem à votre Gemfile :

```ruby
gem 'ekylibre-viti'
```

Puis exécuter :

```bash
bundle install
rails ekylibre_viti:install:migrations
rails db:migrate
```

## Utilisation

### DRM

La DRM (Déclaration Récapitulative Mensuelle) permet de déclarer mensuellement les mouvements de stock et les sorties de produits vitivinicoles.

### DSA

Le DSA (Document Simplifié d'Accompagnement) est utilisé pour accompagner le transport de produits vitivinicoles en suspension de droits d'accises.

### DAE

Le DAE (Document Administratif Électronique) est le document dématérialisé qui remplace le DAA (Document Administratif d'Accompagnement) pour les mouvements de produits soumis à accises.

### Comptabilité matière

La comptabilité matière permet de suivre les entrées, sorties et stocks de produits vitivinicoles.

## Développement

```bash
bundle install
rails db:migrate RAILS_ENV=test
rspec
```

## Licence

Ce projet est sous licence AGPL-3.0.