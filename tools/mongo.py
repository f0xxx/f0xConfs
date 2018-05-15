# 7、连接聚集
# account = db.get_collection("col_name")
# print account

# # 8、查看聚集的一条记录
# account.find_one()
# # 9、查看聚集的所有key (类似于关系型数据库中的字段)
# account.find_one().keys()
# # 10、查看聚集的所有记录
# for i in account.find():
#     print i
# # 11、查看记录总数
# account.find().count()
# # 12、根据条件查询多条记录
# for i in account.find({"name": "xxx"}):
#     print i
# # 13、对查询结果进行排序 (默认升序ASCENDING)
# account.find().sort("name", pymongo.ASCENDING)
# account.find().sort([("name", pymongo.ASCENDING), ("active_time", pymongo.DESCENDING)])
# account.insert({"name": "mike", "active_time": "20130408"})
# # 15、更新记录
# account.update({"name": "mike"}, {"$set": {"active_time": "20130408120000"}})
# # 注：如果数据中没有键-值"name": "mike"， 会新增"active_time": "20130408120000"
# # 16、删除记录 (不带条件表示全部删除)
# account.remove({"name": "mike"})
# # 17. pycharm模糊不清匹配查询
# # 方法1.
# import re
# {'xxx':re.compile('xxx')}

# # 方法2.
# {'xxx':{'$regex':'xxx'}
# # 18.and or
# account.find({ $or: [ { title: {$regex: 'test'} }, { intro: {$regex: 'test'} } ] })

import pymongo

mongoip = '172.29.3.237'
mongoport = '27017'
dbconnstr = 'mongodb://' + mongoip + ':' + mongoport + '/'
client = pymongo.MongoClient(dbconnstr)
print client.database_names()

# db = client['db_name']
db = client['hunt5']

db.collection_names()

movies = db['movies.douban']

print movies.find({}).count()
query = {'$regex':'/2\d+/'}
print movies.find({'url': query}).count()
print movies.find_one({'url': query})['url']
# print movies.find_one({'name': 'Dust'})
# print movies.find({ 'name' : { '$exists' : 'true' },'date' : { '$exists' : 'true' } }).count()
# for m in movies.find({ 'name' : { '$exists' : 'true' },'date' : { '$exists' : 'true' } }):
#     if m['date'] == '2018':
#         print '[%s(%s)]' % (m['name'],m['date'])

# print movies.find({"name":"米花之味"})
# movies.update_one({"name":"米花之味"},{"$set": {"year": "20130408120000"}})
# print movies.find({"name":"米花之味"})
