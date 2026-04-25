import tkinter as tk
from tkinter import messagebox

def calcular():
    try:
        # Obtener los datos de las cajas de texto
        n1 = float(entry1.get())
        n2 = float(entry2.get())
        promedio = (n1 + n2) / 2

        label_promedio.config(text=f"{promedio:.2f}")

        # Mostrar resultado en una ventana emergente
        messagebox.showinfo("Resultado", f"El promedio es: {promedio:.2f}")

        entry1.focus()

    except ValueError:
        messagebox.showerror("Error", "Por favor ingresa solo números")

def seleccionar_texto_entry(event):
    event.widget.select_range(0,tk.END) 

# Configuración de la ventana principal
ventana = tk.Tk()
ventana.title("Calculadora de Notas")
ventana.geometry("300x200")

# Elementos de la interfaz (Etiquetas y Entradas)
tk.Label(ventana, text="Nota 1:").pack(pady=5)
entry1 = tk.Entry(ventana)
entry1.pack()
entry1.bind("<FocusIn>",seleccionar_texto_entry)
entry1.focus()

tk.Label(ventana, text="Nota 2:").pack(pady=5)
entry2 = tk.Entry(ventana)
entry2.bind("<FocusIn>",seleccionar_texto_entry)
entry2.pack()

# Botón para ejecutar la función
tk.Button(ventana, text="Calcular Promedio", command=calcular).pack(pady=20)

#label para mostrar el promedio
label_promedio=tk.Label(ventana,text="Promedio")
label_promedio.pack(pady=5)

ventana.mainloop()