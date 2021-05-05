import copy
versions = {}

versions['0.0.0.1.1'] = {}
versions['0.0.0.1.1']['list'] = {}
versions['0.0.0.1.1']['list']['query'] = 'select person_id, person_name from people order by person_id'
versions['0.0.0.1.2'] = copy.deepcopy(versions['0.0.0.1.1'])
versions['0.0.0.1.2']['list']['queryTag'] = '''select p.person_id, p.person_name
from people as p
natural join tags_x_people as txp
natural join tags as t
where t.tag_name in (\'{tag}\')
group by p.person_id
having count(t.tag_id) = 1
order by person_id'''

