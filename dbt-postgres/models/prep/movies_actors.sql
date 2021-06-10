{{ config(materialized='table') }}

SELECT mov.name
	,act.first_name
	,act.last_name
	,act.gender
FROM {{ref('movies')}} mov
INNER JOIN {{ref('roles')}} rol ON rol.movie_id = mov.id
INNER JOIN {{ref('actors')}} act ON act.id = rol.actor_id
