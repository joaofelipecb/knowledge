import tools.p23control.Database
import p17data.Config
import p17data.Person

class People:
    def __init__(self, children=[]):
        self.__children = children

    def __eq__(self, other):
        if not isinstance(other, People):
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
            query = p17data.Person.versions[p17data.Config.version]['list']['query']
            results = tools.p23control.Database.query(query)
        else:
            tagStr = str.join('\',\'',tag)
            query = p17data.Person.versions[p17data.Config.version]['list']['queryTag']
            results = tools.p23control.Database.query(query,{'tag':tagStr,'tagCount':len(tag)})
        personList = []
        for result in results:
            personList.append(Person(result[1],result[0]))
        return People(personList)

class Person:
    def __init__(self, name, id=None):
        self.__name = name
        self.__id = id

    def __eq__(self, other):
        if not isinstance(other, Person):
            return False
        flag = True
        if self.__id is not None or other.__id is not None:
            flag = flag and self.__id == other.__id
        flag = flag and self.__name == other.__name
        return flag

    @property
    def name(self):
        return self.__name

