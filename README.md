URL de l'Application :
http://localhost:8080

URL pour Afficher un Pays Aléatoire :
GET http://localhost:8080/game/country

URL pour Soumettre une Réponse :
POST http://localhost:8080/game/guess?countryId={id}&capital={capital}
Remplacez {id} par l'ID du pays et {capital} par la capitale que vous devinez.

URL pour Obtenir le Score Actuel :
GET http://localhost:8080/game/score
