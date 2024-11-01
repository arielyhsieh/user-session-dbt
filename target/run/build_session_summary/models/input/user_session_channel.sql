
  create or replace   view USER_SESSION_DB.analytics.user_session_channel
  
   as (
    SELECT
    userId,
    sessionId,
    channel
FROM user_session_db.raw_data.user_session_channel
WHERE sessionId IS NOT NULL
  );

