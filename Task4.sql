USE vk;

-- * Подсчитать общее количество лайков, которые получили пользователи младше 18 лет..

SELECT SUM(countLikes) AS sumOfLikes
FROM (
	SELECT media.user_id, profiles.birthday, COUNT(*) AS countLikes
	FROM likes
		JOIN media ON likes.media_id = media.id
		JOIN profiles ON profiles.user_id = media.user_id
	WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 18
	GROUP BY user_id
	ORDER BY countLikes DESC
    ) AS countLikes;