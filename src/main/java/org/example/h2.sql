drop table top1m;

drop table top1m_ni;

CREATE TABLE IF NOT EXISTS `top1m`
(
    `domain`            VARCHAR(128)     NOT NULL
    ) ;

create UNIQUE INDEX domain_idx  on top1m(`domain`);

show create table `top1m`;

explain analyze select * from top1m where domain = 'baidu.com';

create table top1m_ni( `domain` VARCHAR(128) NOT NULL) as select * from CSVREAD('~/Desktop/alexa');

explain analyze select * from top1m_ni where domain = 'baidu.com';
