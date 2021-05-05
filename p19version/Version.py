import datetime
import copy

# Version format
# major.minor.patch.sprint.day

versions = {}
versions['0.0.0.1.1'] = {}
versions['0.0.0.1.1']['date'] = datetime.datetime.strptime('2021-05-04','%Y-%m-%d')
versions['0.0.0.1.1']['branches'] = {}
versions['0.0.0.1.2'] = {}
versions['0.0.0.1.2']['date'] = datetime.datetime.strptime('2021-05-05','%Y-%m-%d')
versions['0.0.0.1.2']['branches'] = copy.deepcopy(versions['0.0.0.1.1']['branches'])
