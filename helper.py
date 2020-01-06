
import sys

IS_PY2 = sys.version_info[0] == 2

def bin2hex(x, pretty=False):

    space = ''
    if pretty:
        space = ' '
       
    if IS_PY2:
        return ''.join('%02X%s' % (ord(y), space) for y in x)
    return ''.join('%02X%s' % (y, space) for y in x)
    

def hex2bin(x):
    
    if IS_PY2:
        return x.decode('hex')
    return bytes.fromhex(x)