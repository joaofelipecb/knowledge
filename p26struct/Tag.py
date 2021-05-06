import tools.p23control.Database
import p17data.Config
import p17data.Tag

class Tags:
    def __init__(self, children=[]):
        self.__children = children

    def __eq__(self, other):
        if not isinstance(other, Tags):
            return False
        if len(self.__children) != len(other.__children):
            return False
        for i, child in enumerate(self.__children):
            if child != other.__children[i]:
                return False
        return True

    @property
    def children(self):
        return self.__children

    def list(tag=[]):
        if len(tag) == 0:
            query = p17data.Tag.versions[p17data.Config.version]['list']['query']
        else:
            tagStr = str.join('\',\'',tag)
            query = p17data.Tag.versions[p17data.Config.version]['list']['queryTag'].format(tag=tagStr)
        results = tools.p23control.Database.query(query)
        tagList = []
        for result in results:
            tagList.append(Tag(result[1],result[0]))
        return Tags(tagList)

class Tag:
    def __init__(self, name, id=None):
        self.__name = name
        self.__id = id

    def __eq__(self, other):
        if not isinstance(other, Tag):
            return False
        flag = True
        if self.__id is not None or other.__id is not None:
            flag = flag and self.__id == other.__id
        flag = flag and self.__name == other.__name
        return flag

    @property
    def name(self):
        return self.__name

