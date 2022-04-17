create database if not exists bigdata;
use bigdata;
create external table if not exists tweets (
  id int,
  tweetId string,
  tweet string
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 'hdfs://namenode:8020/user/hive/warehouse/bigdata.db/tweets';