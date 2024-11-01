WITH  __dbt__cte__user_session_channel as (
SELECT
    userId,
    sessionId,
    channel
FROM user_session_db.raw_data.user_session_channel
WHERE sessionId IS NOT NULL
),  __dbt__cte__session_timestamp as (
SELECT
    sessionId,
    ts
FROM user_session_db.raw_data.session_timestamp
WHERE sessionId IS NOT NULL
), u AS (
    SELECT * FROM __dbt__cte__user_session_channel
), st AS (
    SELECT * FROM __dbt__cte__session_timestamp
)
SELECT u.userId, u.sessionId, u.channel, st.ts
FROM u
JOIN st ON u.sessionId = st.sessionId