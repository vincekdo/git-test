select
  u.id
  , u.first_name
  , u.last_name
  , u.first_name || ' ' || u.last_name as full_name
  , u.gender
  , u.email
  , u.zipcode
  , u.latitude
  , u.longitude
  , p.user_id
  , p.price
  , p.platform as purchase_platform
  , p.created_at as purchase_date
  , a.spend
  , a.network
from
  periscope_views.purchases as p
  join periscope_views.users as u on
  p.id = u.id
  join periscope_views.ad_spend as a on
  u.source = a.network