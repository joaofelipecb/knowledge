import copy
versions = {}

versions['0.0.0.1.1'] = {}
versions['0.0.0.1.1']['routes'] = {}
versions['0.0.0.1.1']['routes']['/tag'] = 'p23control.Tag.list()'
versions['0.0.0.1.1']['routes']['/person'] = 'p23control.Person.list()'

versions['0.0.0.1.1']['route'] = {}
versions['0.0.0.1.1']['route']['routes'] = versions['0.0.0.1.1']['routes']
versions['0.0.0.1.2'] = copy.deepcopy(versions['0.0.0.1.1'])
versions['0.0.0.1.2']['routes']['/person/_tag/{tag}'] = 'p23control.Person.list(tag)'

