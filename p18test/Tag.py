import copy
versions = {}

versions['0.0.0.1.1'] = {}
versions['0.0.0.1.1']['list'] = {}
versions['0.0.0.1.1']['list']['basic'] = {
        'given':{},
        'then':['_result == p26struct.Tag.Tags([p26struct.Tag.Tag(\'alphasights\',1),p26struct.Tag.Tag(\'knowledge\',2)])']
        }

versions['0.0.0.1.2'] = copy.deepcopy(versions['0.0.0.1.1'])
