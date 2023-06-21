USE vk;

-- Подсчитать количество пользователей в каждом сообществе.

SELECT users_communities.community_id, communities.name, COUNT(*) AS countSubscribers
FROM communities
	JOIN users_communities ON community_id = communities.id
GROUP BY community_id
ORDER BY community_id;