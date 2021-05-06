def list(tag=[]):
    import p26struct.Person
    import p26struct.Tag
    people = p26struct.Person.People.list(tag)
    tags = p26struct.Tag.Tags.list(tag)
    buffer = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">\n'
    buffer = buffer + '<html xmlns="http://www.w3.org/1999/xhtml">\n'
    buffer = buffer + '<head>\n'
    buffer = buffer + '<title>Person</title>\n'
    buffer = buffer + '</head>\n'
    buffer = buffer + '<body>\n'
    buffer = buffer + '<ul>\n'
    buffer = buffer + '<li>People:\n'
    buffer = buffer + '<ul>\n'
    for person in people.children:
        buffer = buffer + '<li>'+person.name+'</li>\n'
    buffer = buffer + '</ul>\n'
    buffer = buffer + '</li>\n'
    buffer = buffer + '<li>Tags:\n'
    buffer = buffer + '<ul>\n'
    for tagChild in tags.children:
        if len(tag) == 0:
            buffer = buffer + '<li><a href="person/_tag/'+tagChild.name+'">'+tagChild.name+'</a></li>\n'
        else:
            repeat = len(tag)+1
            buffer = buffer + '<li><a href="'+('../'*repeat)+'person/_tag/'+str.join('/',tag)+'/'+tagChild.name+'">'+tagChild.name+'</a></li>\n'
    buffer = buffer + '</ul>\n'
    buffer = buffer + '</ul>\n'
    buffer = buffer + '</body>\n'
    buffer = buffer + '</html>\n'
    return buffer

