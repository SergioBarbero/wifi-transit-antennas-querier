import os
from sendDataToDB import executeScriptsFromFile
from decompress import decompress

#Iterates over the directory 'outbox' and decompresses its files in 'data'
for filename in os.listdir('outbox'):
    if not filename.endswith(".start.tar.bz2"):
        decompress('outbox/' + filename)
        os.rename('outbox/' + filename, 'sent/' + filename)

for filename in os.listdir('data'):
    executeScriptsFromFile('data/' + filename)
    os.remove('data/' + filename)

