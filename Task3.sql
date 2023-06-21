USE vk;

-- Пусть задан некоторый пользователь. Из всех пользователей 
-- соц.сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).

SELECT messages.from_user_id, users.lastname, users.firstname, COUNT(*) AS countFromUsers
FROM messages
	JOIN users ON users.id = from_user_id
WHERE to_user_id = 1
GROUP BY from_user_id
ORDER BY countFromUsers DESC
LIMIT 1;