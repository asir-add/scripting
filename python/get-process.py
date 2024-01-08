# Desc: Get all processes running on the system using powershell

import subprocess
import os

def run_command(command):
    return subprocess.check_output(command, shell=True).decode('utf-8')

def get_process_list():
    # ejecuta el comando powershell para obtener los procesos, cogiendo sólo las columnas Id y ProcessName
    result = run_command('powershell.exe "Get-Process | Select-Object Id, ProcessName"').strip().splitlines()
    # crea un array vacío para guardar los procesos
    processes = []
    # recorre el resultado, ignorando las dos primeras líneas (que son la cabecera)
    for i,process in enumerate(result):
        if i <= 1:
            continue
        # divide cada línea en un array con dos elementos: id y nombre del proceso
        process = process.strip().split()
        # añade el proceso al array de procesos
        processes.append({
            'id': process[0],   # el id es el primer elemento
            'name': process[1]  # el nombre es el segundo elemento
        })
    return processes

# imprime el array de procesos
print(get_process_list())