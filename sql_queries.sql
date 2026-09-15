SELECT * FROM public.health_data1;

-- Average step count grouped by activity level
SELECT activity_level, ROUND(AVG(step_count)) 
FROM public.health_data1
GROUP BY activity_level;

-- Average heart rate grouped by heart rate
SELECT activity_level, ROUND(AVG(heart_rate))
FROM public.health_data1
GROUP BY activity_level;

-- Average step count and stress level grouped by activity level where the users were highly active
SELECT activity_level, ROUND(AVG(step_count)), ROUND(AVG(stress_level))
FROM public.health_data1
WHERE activity_level = 'Highly Active'
GROUP BY activity_level;

-- User with the highest step count
SELECT user_id, step_count
FROM public.health_data1
ORDER BY step_count DESC
LIMIT 5;