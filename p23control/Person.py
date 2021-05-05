import p26struct.Person

def list(tag=None):
    people = p26struct.Person.People.list(tag)
    buffer = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">\n'
    buffer = buffer + '<html xmlns="http://www.w3.org/1999/xhtml">\n'
    buffer = buffer + '<head>\n'
    buffer = buffer + '<title>Person</title>\n'
    buffer = buffer + '</head>\n'
    buffer = buffer + '<body>\n'
    buffer = buffer + '<ul>\n'
    for person in people.children:
        buffer = buffer + '<li>'+person.name+'</li>\n'
    buffer = buffer + '</ul>\n'
    buffer = buffer + '</body>\n'
    buffer = buffer + '</html>\n'
    return buffer

