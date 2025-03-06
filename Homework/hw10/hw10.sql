CREATE TABLE parents AS
  SELECT "ace" AS parent, "bella" AS child UNION
  SELECT "ace"          , "charlie"        UNION
  SELECT "daisy"        , "hank"           UNION
  SELECT "finn"         , "ace"            UNION
  SELECT "finn"         , "daisy"          UNION
  SELECT "finn"         , "ginger"         UNION
  SELECT "ellie"        , "finn";

CREATE TABLE dogs AS
  SELECT "ace" AS name, "long" AS fur, 26 AS height UNION
  SELECT "bella"      , "short"      , 52           UNION
  SELECT "charlie"    , "long"       , 47           UNION
  SELECT "daisy"      , "long"       , 46           UNION
  SELECT "ellie"      , "short"      , 35           UNION
  SELECT "finn"       , "curly"      , 32           UNION
  SELECT "ginger"     , "short"      , 28           UNION
  SELECT "hank"       , "curly"      , 31;

CREATE TABLE sizes AS
  SELECT "toy" AS size, 24 AS min, 28 AS max UNION
  SELECT "mini"       , 28       , 35        UNION
  SELECT "medium"     , 35       , 45        UNION
  SELECT "standard"   , 45       , 60;


-- All dogs with parents ordered by decreasing height of their parent
CREATE TABLE by_parent_height AS
  SELECT child from dogs, parents where name = parent order by -height;


-- The size of each dog
CREATE TABLE size_of_dogs AS
  SELECT name, size from dogs, sizes where min < height and height <= max;


-- [Optional] Filling out this helper table is recommended
CREATE TABLE siblings AS
  SELECT first.child as a, second.child as b from parents as first, parents as second
    where first.parent=second.parent and first.child<second.child;

-- Sentences about siblings that are the same size
CREATE TABLE sentences AS
  SELECT "The two siblings, " || a || " and " || b || ", have the same size: " || first.size
    from siblings, size_of_dogs as first, size_of_dogs as second
    where a=first.name and b=second.name and first.size=second.size;


-- Height range for each fur type where all of the heights differ by no more than 30% from the average height
CREATE TABLE low_variance AS
  SELECT fur, max(height) - min(height) as height_range from dogs group by fur
    having min(height) >= 0.7 * avg(height) and max(height) <= 1.3 * avg(height);

