# 📡 BubbleUPnP Server en Docker (Ubuntu 22.04)

Este contenedor permite ejecutar **BubbleUPnP Server** en un entorno Docker basado en **Ubuntu 22.04** con soporte para NVIDIA.

---

## 🛠 Requisitos

- **Docker** instalado en el sistema anfitrión.
- **NVIDIA drivers** instalados si deseas habilitar la aceleración de hardware.

---

## 🏗 Construcción de la Imagen

Para construir la imagen Docker, usa el siguiente comando:

```bash
docker build -t bubbleupnp-server .

