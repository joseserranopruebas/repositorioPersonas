from flask import Flask, render_template, request, redirect
import pymysql

app=Flask(__name__)
def obtener_conexion():
    return pymysql.connect(host='localhost',
                                user='root',
                                password='',
                                db='dbdiccionario')

def obtener_datos():
    conexion = obtener_conexion()
    datos = []
    with conexion.cursor() as cursor:
        cursor.execute("SELECT id, nombre, edad FROM persona")
        datos = cursor.fetchall()
    conexion.close()
    return datos

def eliminar_registro(id):
    conexion = obtener_conexion()
    cursor = conexion.cursor()
    cursor.execute("DELETE FROM persona where id='"+id+"'")
    conexion.commit()
    cursor.close()
    conexion.close()
    return 1

def buscar_datos(nombre):
    conexion = obtener_conexion()
    datos = []
    with conexion.cursor() as cursor:
        cursor.execute("SELECT id, nombre, edad FROM persona where nombre like '%"+nombre+"%'")
        datos = cursor.fetchall()
    conexion.close()
    return datos

@app.route('/eliminar',methods=('GET', 'POST'))
def eliminar():
    if request.method == 'POST':
        id=request.form['registroSeleccionado']
        if (eliminar_registro(id)):
            return redirect('/')
        else: 
            return "ERROR"
    

@app.route('/',methods=('GET', 'POST'))
def index():
    busqueda=''
    if request.method == 'POST':
        busqueda=request.form['busqueda']
        personas=buscar_datos(busqueda);
    else:
        personas=obtener_datos();

    
    data={
        'titulo':'Listado de personas',
        'personas': 
            [],
    }
    return render_template('index.html',data=data,personas=personas)
if __name__=='__main__':
    app.run()