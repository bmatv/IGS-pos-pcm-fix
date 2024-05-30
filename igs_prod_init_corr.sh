#Pos-pcm GPS
for file in  2016/2016-02-09.pos.gz 2016/2016-02-10.pos.gz 2016/2016-02-11.pos.gz 2016/2016-02-12.pos.gz; do zcat $file | grep -v GPS70 > buf; gzip buf; mv buf.gz $file; done
#Pos-pcm problem GLONASS
#2016 054 055 056 057 R851
for file in 2016-02-22.pos.gz 2016-02-23.pos.gz 2016-02-24.pos.gz 2016-02-25.pos.gz 2016-02-26.pos.gz; do zcat 2016/$file | grep -v R851> buf; gzip buf; mv buf.gz 2016/$file; done
#2016 046 047 048 049 050
for file in 2016-02-15.pos.gz 2016-02-16.pos.gz 2016-02-17.pos.gz 2016-02-18.pos.gz 2016-02-19.pos.gz; do zcat 2016/$file | grep -v R802> buf; gzip buf; mv buf.gz 2016/$file; done
#2017 292 293 294 295 296 297 298 299 300 #Same with ESA but not for 2017-10-18
for day in 14 15 16 17 18 19 20 21 22 23 24 25 26 27; do zcat "2017/2017-10-$day.pos.gz" | grep -v R852> buf; gzip buf; mv buf.gz "2017/2017-10-$day.pos.gz"; done
#COD operational 23, ESA operational 24: 
for day in 23 24 ; do zcat "2016/2016-06-$day.pos.gz" | grep -v R853> buf; gzip buf; mv buf.gz "2016/2016-06-$day.pos.gz"; done
#2019 correction
for day in 20 21 22 23 24 25 26 27 28 ; do zcat "2019/2019-06-$day.pos.gz" | grep -v R858> buf; gzip buf; mv buf.gz "2019/2019-06-$day.pos.gz"; done
