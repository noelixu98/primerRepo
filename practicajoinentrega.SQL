/* ¿que genero obtuvo más medallas  en los JJOO*/

SELECT event_gender, count(medal)
from olym.olym_medals
INNER JOIN olym.olym_events on olym.olym_medals.event_ID= olym.olym_events.id
group by event_gender;


/* ¿cuantos eventos ha tenido cada disciplina?. Ordenalos de mayor a menor */
SELECT discipline, count(event)
from olym.olym_base_events
inner join olym.olym_disciplines on olym.olym_base_events.discipline_ID= olym.olym_disciplines.id
group by discipline
order by count(event) DESC;


/* Muestra el codigo de los athletas junto a su nacion. */ 
SELECT athlete_ID, nation
from olym.olym_athlete_games
inner join olym.olym_nations on olym.olym_athlete_games.nation_ID= olym.olym_nations.id;