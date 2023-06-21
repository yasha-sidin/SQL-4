USE vk;

-- Подсчитать количество групп (сообществ), в которые вступил каждый пользователь.

SELECT users.id, COUNT(*) AS countSubscriptions
FROM users
	LEFT JOIN users_communities ON users.id = user_id
GROUP BY users.id;
