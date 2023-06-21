USE vk;

-- * Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT profiles.gender, COUNT(*) AS countLikes
FROM likes
	JOIN profiles ON profiles.user_id = likes.user_id
GROUP BY profiles.gender
ORDER BY countLikes DESC
LIMIT 1;

