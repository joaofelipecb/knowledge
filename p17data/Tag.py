import copy
versions = {}

versions['0.0.0.1.1'] = {}
versions['0.0.0.1.1']['list'] = {}
versions['0.0.0.1.1']['list']['query'] = 'select tag_id, tag_name from tags order by tag_id'

versions['0.0.0.1.2'] = copy.deepcopy(versions['0.0.0.1.1'])
versions['0.0.0.1.2']['list']['queryTag'] = '''select t2.tag_id, t2.tag_name
from tags as t1
left join tags_x_people as txp1 on t1.tag_id = txp1.tag_id
left join tags_x_people as txp2 on txp1.person_id = txp2.person_id
left join tags as t2 on txp2.tag_id = t2.tag_id
where t1.tag_name in (\'{tag}\')
and t2.tag_id not in (t1.tag_id)
order by t2.tag_id
'''

