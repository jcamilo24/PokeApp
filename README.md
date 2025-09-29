# PokeApp

Aplicación móvil desarrollada en **Flutter** como parte de una prueba técnica para el proceso de selección en Global66.  
La app consume la [PokeAPI](https://pokeapi.co/) y permite explorar una lista de Pokémon, visualizar detalles y gestionar una lista de favoritos.

---

## 🚀 Características principales

- **Pantalla Splash** con animación de la Pokébola.
- **Onboarding** con soporte multilenguaje (español/inglés).
- **Home** con listado de Pokémon usando datos de la [PokeAPI](https://pokeapi.co/).
- **Detalle de Pokémon** con información específica (stats, tipos, habilidades, etc.).
- **Favoritos**: gestión de lista de Pokémon favoritos.
- **Páginas de error**:
  - `NoPokemos` → cuando no se encuentran Pokémon.
  - `NoFavorites` → cuando no hay Pokémon favoritos.
  - `NoDetail` → cuando no se puede mostrar información del Pokémon seleccionado.
- **Internacionalización (I18N)** implementada con `flutter_localizations`.
- **Arquitectura limpia (Clean Architecture)** separando capas de `data`, `domain`, `application` y `presentation`.
- **Manejo de estado** con **Riverpod** y `ConsumerWidget` para optimizar actualizaciones de UI.
- **Atomic Design** se trato de seguir el diseño atomico con buena separacion en los widgets, por cuestiones de tiempo no se pudo dar mas enfasis

---

## 🛠️ Tecnologías utilizadas

- **Flutter 3.x** con **Material 3**.
- **Riverpod** para manejo de estado reactivo.
- **Dio** como cliente HTTP.
- **GoRouter** para navegación declarativa.
- **Intl** para internacionalización (i18n).

---

## 📂 Estructura del proyecto

lib/
├── features/
│ ├── error_pages/ # Pantallas de error (NoPokemos, NoFavorites, NoDetail)
│ ├── home/
│ │ ├── application/ # Providers, states y viewmodels
│ │ ├── data/ # Modelos y repositorios de la PokeAPI
│ │ ├── domain/ # Entidades de negocio
│ │ └── presentation/ # Screens y widgets de la UI
│ ├── onboarding/ # Flujo de onboarding
│ └── splash/ # Pantalla inicial con animación
├── l10n/ # Archivos de localización
├── main.dart # Punto de entrada

---

## 🔗 API Endpoints utilizados

- Lista de pokémons:
  GET https://pokeapi.co/api/v2/pokemon

- Detalle de pokémon:
  GET https://pokeapi.co/api/v2/pokemon/{name}

---

## 📦 Instalación y ejecución

1. Clonar el repositorio:

```bash
git clone https://github.com/tuusuario/pokeapp.git
cd pokeapp
```

2. Instalar dependencias:
   flutter pub get

3. flutter run

---

🧱 Arquitectura y decisiones técnicas

Clean Architecture: Código organizado en capas (data, domain, application, presentation) para facilitar escalabilidad y mantenibilidad.

Riverpod: Manejo de estado seguro y reactivo, con ConsumerWidget para optimizar las actualizaciones de UI.

GoRouter: Navegación declarativa y centralizada.

Internacionalización: Soporte multilenguaje (español e inglés).

Pantallas de error: Widgets reutilizables para mostrar mensajes cuando no hay datos disponibles.

---

🔒 Seguridad

Validación de estados en los ViewModels para evitar inconsistencias.

Buenas prácticas de Clean Code, SOLID.

---

## ✨ IA utilizada

Este proyecto fue desarrollado con apoyo de **IA (ChatGPT)** para:

- Se utilizo a medida creciente mientras mas tiempo de gastaba con el diseño, es decir al principio solo se utilizo para poder identificar que colores eran, redondeados y demas, pero mientras el tiempo para entregar la prueba se disminuiba toco por ejemplo al final pedir la ayuda para la creacion del contenido de favoritos, rapidamente crear tanto el diseño del deslizamiento del card para la eliminacion del mismo y el metodo de agregacion y eliminacion del pokemon favorito, en cuanto a logica y desarrollo de lo demas si no se utilizo IA, en termino generales solo diseño por el hecho de que el figma no se otorgaba para sacar datos exacto de codigo.

- Generación de documentación técnica (README). Las decisiones técnicas finales, arquitectura y ajustes de código fueron realizadas manualmente para cumplir los requerimientos.

---

## Cosas Faltantes y cosas a mejorar

En el proyecto no se logro aplicar una mejor seguridad por cuestiones de tiempo, esta la idea de mejorar la seguridad en la navegabilidad de la app, mejorar el GoRouter con FutureStorage para validaciones de ciertas vistas.

Falto testeo importante en la app aunque se corroboro errores y margenes de error y se trabajo con respecto a ideas de tamaño de celular y demas.

Cuanto a los datos de las Apis, eran bastante reducidos en cuanto a las Dos Urls Proporcionadas y dichas que solo debian usarse, tenia la posibilidad de consumir otra ruta de la cual llegaban en el info como para sacar el rango de genero real, las debibilidades, descripciones y demas, pero por decision propia y para reducir tiempo preferi crear unos mockups para rellenar los datos faltantes en los detalles del pokemon, aun asi se trato de aprovechar al maximo lo que se podia rescatar y utilizar.

## 👨‍💻 Autor

- **Juan Camilo Bolaños**
- Desarrollador Flutter
- [LinkedIn](www.linkedin.com/in/camilobolanos-developer) | [GitHub](https://github.com/jcamilo24?tab=repositories)
