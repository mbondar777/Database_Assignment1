USE movie;

WITH movies_statistics AS (
    SELECT
        m.movie_id,
        AVG(r.rating) AS avg_rating,
        COUNT(u.user_id) AS num_unique_raters,
        COALESCE(actor_counts.actor_count, 0) AS actor_count
    FROM movies m
    LEFT JOIN ratings r ON m.movie_id = r.movie_id
    LEFT JOIN users u ON r.user_id = u.user_id
    LEFT JOIN (
        SELECT
            movie_id,
            COUNT(p.person_id) AS actor_count
        FROM roles ro
        JOIN persons p ON ro.person_id = p.person_id
        WHERE ro.role_name IN ('Actor', 'Actress')
        GROUP BY movie_id
    ) AS actor_counts ON m.movie_id = actor_counts.movie_id
    GROUP BY m.movie_id, actor_counts.actor_count
    HAVING
        COUNT(u.user_id) >= 3
        AND COALESCE(actor_counts.actor_count, 0) >= 1
)
SELECT
    m.movie_id,
    m.title,
    m.release_year,
    m.country,
    m.genre,
    ROUND(ma.avg_rating, 2) AS avg_rating,
    ma.num_unique_raters, 
    ma.actor_count
FROM movies AS m
JOIN movies_statistics AS ma ON m.movie_id = ma.movie_id
WHERE
    m.release_year >= 2005
    AND ma.avg_rating > 5
ORDER BY
    avg_rating DESC,
    ma.num_unique_raters DESC
LIMIT 5;

SELECT 'Actor'   AS role_group, pr.person_id, pr.name
FROM persons pr
WHERE pr.person_id IN (
  SELECT person_id FROM roles WHERE role_name = 'Actor'
)
UNION ALL
SELECT 'Actress' AS role_group, pr.person_id, pr.name
FROM persons pr
WHERE pr.person_id IN (
  SELECT person_id FROM roles WHERE role_name = 'Actress'
)
ORDER BY role_group, name;