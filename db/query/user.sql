-- name: getUser :one
SELECT * FROM user WHERE user_name=$1   LIMIT 1;

-- name: listUsers :many
SELECT user_name, password FROM user  LIMIT 100;

-- name: insert : one
INSERT INTO Event_detail(
  code,
  remark,
  event_date,
  type )
  VALUES
  ('tes',
  'tes',
  '2022-02-02',
  'Internal') RETURNING *;