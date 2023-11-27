#!/usr/bin/env python3

import os, sys, shutil

params=sys.argv[1:]
file=params[0]
old_st=None

if os.path.isfile(file):
    # obtiene el pid del proceso
    pid=os.getpid()
    # crea la ruta completa del fichero de copia de seguridad
    backupfile=f"/tmp/{pid}.safedit.py"
    # copia el fichero "file" como "backupfile"
    shutil.copyfile(file, backupfile)    
    # obtiene la fecha del fichero original
    old_st=os.stat(file)
    print(f"El fichero {file} existe, por lo que se ha hecho una copia en {backupfile}")


os.system(f"nano {file}")

# comprueba si se ha modificado el fichero original, y si no, lo elimina
if old_st is not None and os.stat(file) == old_st:
    print(f"Eliminando fichero de copia {backupfile} porque no ha habido cambios")
    os.remove(backupfile)
