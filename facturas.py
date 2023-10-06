import tkinter as tk
from tkcalendar import Calendar

def obtener_fecha_seleccionada():
    fecha = cal.get_date()
    etiqueta_fecha.config(text=f"Fecha seleccionada: {fecha}")

ventana = tk.Tk()
ventana.title("Facturas")
ventana.geometry("1200x1200")

# Crear un Label y un Entry usando el método grid
labelNFactura = tk.Label(ventana, text="Nº factura:")
labelNFactura.grid(row=0, column=0, padx=20, pady=20)  # Establecer la posición y el espacio

NoFactura = "0000000001"
# Crear un Entry y establecerlo como "readonly"
entryNFactura = tk.Entry(ventana)
entryNFactura.insert(0, NoFactura)  # Insertar el texto por defecto
entryNFactura.configure(state="readonly", disabledbackground="white")
entryNFactura.grid(row=0, column=1, padx=20, pady=20)

# Crear un widget de calendario y colocarlo utilizando grid()
cal = Calendar(ventana, selectmode="day", date_pattern="yyyy-mm-dd")
cal.grid(row=0, column=2, padx=20, pady=20)

# Crear un botón para obtener la fecha seleccionada y colocarlo utilizando grid()
boton_obtener_fecha = tk.Button(ventana, text="Obtener Fecha", command=obtener_fecha_seleccionada)
boton_obtener_fecha.grid(row=1, column=2, padx=20, pady=10)

# Crear una etiqueta para mostrar la fecha seleccionada y colocarla utilizando grid()
etiqueta_fecha = tk.Label(ventana, text="")
etiqueta_fecha.grid(row=2, column=2, padx=20, pady=10)

ventana.mainloop()