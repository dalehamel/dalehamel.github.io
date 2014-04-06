import html2text
import os

for each in os.listdir('todo'):
    data = open(os.path.join('todo',each)).read()
    try:
        h = html2text.html2text()
        #h.escape_all = True
        print h.handle(data)
    except:
        print each
        exit()
