# Nanoadventure — Ficha

**Estado:** Activo (Godot)
**Género:** Plataformas / metroidvania
**Tamaño estimado:** 1 semana – 1 mes
**Origen:** Notion, sep 2022 + Godot (Documents/.Godot Projects)

---

## Concepto
Nano es el más chico de su familia. El mensaje: podés lograr lo que te propongas, sin importar tu tamaño.

- Cada familiar se mueve de una sola manera y quedó atrapado en una habitación de la casa que le pertenece a otro.
- Nano, por su tamaño, recorre toda la casa y aprende las habilidades de sus hermanos para liberarlos.
- **Arranque:** se corta la luz. Se oyen ruidos, onomatopeyas y viñetas donde caen los familiares. La primera habilidad es alejar la cámara (la perspectiva es el poder de Nano). Mamá le enseña a encender la luz y el mapa se va revelando al iluminarlo.
- El mapa ocupa toda la pantalla. El zoom a Nano es opcional: el juego se puede jugar desde la vista alejada, que funciona como mapa.
- **Hermano alto:** habitación vertical o precipicio de todo el alto del mapa (Nano puede dejarse caer para viajar rápido).
- **Hermano gordo:** habitación-pozo; golpea las paredes con un dash → le enseña el dash.

## Relevamiento
- Control preciso y responsive.
- Respawn muy vistoso (personaje con mucho contraste; reposicionado animado en lugar de teletransporte).
- Zoom progresivo y centrado en el jugador.
- El zoom out debería ser necesario para ver cosas fuera de pantalla (un super salto contra pinches en el techo), sin volverse molesto.
- Dos tipos de habilidades: **locales** (precisión, zoom in) y **globales** (viaje, zoom out), bien balanceadas.

> Este proyecto tiene seguimiento propio en Godot; esta ficha es solo el concepto original.

---

## Plan 2026 (decisiones de nov 2026)

- **Motor:** Godot. Escala x2 por ahora: base 960x540, grilla de 120x67 tiles.
- **Pantalla:** el mapa entero (una casa en tiles de 8 px) se ve a pantalla completa en 1920x1080. Nano mide 8x8 px. El zoom es opcional: se tiene que poder jugar sin zoom, con el personaje legible.
- **Hermanos:** miden 16, 32, 64 px… Quedaron atrapados en lugares incorrectos de la casa y, al encontrarlos, dan poderes.
- **Poderes de la versión base:**
  - **Dash corto:** empuja bloques y rompe puertas.
  - **Súper salto:** sube por pasillos verticales.
  - **Intercambio de capas:** sobre una base de tiles fija hay dos capas que se intercambian y revelan plataformas o pasillos secretos.
- **La casa:**
  - Corte con sótano, planta baja, piso 1 (quizás 3 pisos según el level design) y ático, donde vive la hermana.
  - El sótano puede ocupar todo el ancho. Los demás pisos comparten las mismas paredes y solo sobresalen los balcones o terrazas.
  - Que no se vea tan cuadrada: más viva y real, manteniendo el tilemap.
  - La casa va cerca de los bordes de la pantalla, con un parkour exterior a los lados que no sea muy grande.
  - Las salas interiores se arman con el tilemap según lo que pidan los poderes.
- **Versiones:**
  1. Versión base, con todos los poderes.
  2. Versión pulida, con efectos visuales.
  - Se trabaja sin rama.
- **Assets rescatados de la prueba vieja en Unity:** sprites de Nano y de la abuela (que da el tutorial o la misión) y un tileset de 8 px con la estética buscada.
- **Proyecto chico:** sin muestra ni apuro, pero tiene que ser ágil.
