SELECT
    sessionId,
    ts
FROM user_session_db.raw_data.session_timestamp
WHERE sessionId IS NOT NULL