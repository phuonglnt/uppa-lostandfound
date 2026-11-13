# User stories – Objet Trouvé UPPA

## Compte et sécurité
1. En tant qu'étudiant, je peux créer un compte avec mon adresse email de l'université (@univ-pau.fr).
2. Après l'inscription, je reçois un email de confirmation avec un lien. Mon compte est actif seulement après confirmation.

## Déclaration d'objets
3. En tant qu'étudiant, je peux déclarer un objet perdu. Je donne un titre, une catégorie, une description, une date, un lieu et une photo.
4. En tant qu'étudiant, je peux déclarer un objet trouvé. Je donne un titre, une catégorie et au moins deux photos (face et dos), sans trop de détails, pour vérifier plus tard la bonne personne. Je peux aussi ajouter une note privée, visible seulement par l'administrateur, avec un détail caché (marque, inscription, numéro de série...) qui aide à confirmer le vrai propriétaire.

## Recherche et consultation
5. En tant qu'étudiant, je peux rechercher des objets par catégorie ou par mot-clé.
6. En tant qu'étudiant, je peux voir mes objets perdus et trouvés que j'ai déclarés, et leur statut (en attente, validé, à corriger).

## Validation par l'administrateur
7. En tant qu'administrateur, je peux valider un objet déclaré.
8. En tant qu'administrateur, si les informations sont incomplètes ou incorrectes, je peux demander une correction à l'étudiant, avec une raison. L'objet n'est pas supprimé, il reste modifiable.

## Réclamation (claim)
9. En tant qu'étudiant, quand je reconnais mon objet, je peux envoyer une demande de récupération.
10. En tant qu'administrateur, si plusieurs étudiants réclament le même objet, je peux demander une description plus précise (caractéristiques, lieu de perte) pour identifier le vrai propriétaire.
11. En tant qu'administrateur, je peux valider une demande de récupération. Dans ce cas, le système envoie l'email de l'étudiant qui a trouvé l'objet à l'étudiant qui le réclame. L'objet n'apparaît plus dans la liste publique.
12. En tant qu'administrateur, je peux refuser une demande de récupération si la description donnée par l'étudiant ne correspond pas aux caractéristiques réelles de l'objet, ou si l'étudiant ne répond pas à la demande d'informations supplémentaires.

## Clôture
13. En tant qu'étudiant ayant trouvé l'objet, je confirme que l'objet a été rendu à la bonne personne. L'objet passe au statut "récupéré".
14. En tant qu'étudiant, je peux supprimer mon objet avec une raison, seulement si aucune demande n'est validée, ou si l'objet est déjà marqué "récupéré".

## Règle métier automatique
15. En tant que système, j'envoie un rappel à l'étudiant au bout de 10 jours si l'objet n'est pas réclamé. Au bout de 30 jours, l'objet passe au statut "archivé" et disparaît de la liste publique.
(Fonctionnalité optionnelle, réalisée à 100% avec l'aide de l'IA, si possible.)