import lzma
import tarfile

def decompress(filename):
    with lzma.open(filename) as f:
        with tarfile.open(fileobj=f) as tar:
            content = tar.extractall('data')

