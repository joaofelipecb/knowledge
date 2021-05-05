import copy
versions = {}

versions['0.0.0.1.1'] = {}
versions['0.0.0.1.1']['list'] = {}
versions['0.0.0.1.1']['list']['query'] = 'select tag_id, tag_name from tags order by tag_id'

versions['0.0.0.1.2'] = copy.deepcopy(versions['0.0.0.1.1'])

