module Problem05 where
import Data.List

ans limit = foldl1 lcm [1..limit]