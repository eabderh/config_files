
import os
import imploder

startupfile_local = 'pyload.py'
if os.path.lexists(startupfile_local):
    execfile(startupfile_local, globals(), locals())


