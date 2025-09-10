SELECT "friend_id" FROM "friends"
WHERE "user_id" = (SELECT "id" FROM "users" WHERE "username" = 'lovelytrust487' )
GROUP BY "friend_id"

INTERSECT

SELECT "friend_id" FROM "friends"
WHERE "user_id" = (SELECT "id" FROM "users" WHERE "username" = 'exceptionalinspiration482')
GROUP BY "friend_id";
