SELECT  user.id, user.email, user_profile.name, user_profile.patronymic, user_profile.surname, user_profile.money, COUNT(user_token.token) AS tokens
FROM user
INNER JOIN user_profile ON user.id=user_profile.user_id
INNER JOIN user_token ON user.id=user_token.user_id
WHERE is_active=1
GROUP BY user.id