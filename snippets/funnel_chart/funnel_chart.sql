select
  [series]
  , 1.0 *  (max - [values]) / 2 as left_buffer
  , [values] as value
  , 1.0 * (max - [values]) / 2 as right_buffer
from
  (
    select
      max([values]) as max
    from
      [table]
  )
  , [table]