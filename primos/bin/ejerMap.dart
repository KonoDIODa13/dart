void main() {
  Map<String, int> mapa = {
    "jaime": 22,
    "angel": 19,
    "erik": 19,
    "dani": 27,
    "estela": 20
  };

  print("La edad total es: ${getEdadTotal(mapa)}");
  print("la edad maxima es: ${getEdadMaxima(mapa)}");
  print("la edad minima es: ${getEdadMinima(mapa)}");
}

int getEdadTotal(Map map) {
  int edades = 0;
  for (int edad in map.values) {
    edades += edad;
  }
  return edades;
}

int getEdadMaxima(Map map) {
  int edadMax = getEdadMinima(map);
  for (var edad in map.values) {
    if (edadMax < edad) {
      edadMax = edad;
    }
  }
  return edadMax;
}

int getEdadMinima(Map map) {
  int edadMin = getEdadMaxima(map);
  for (var edad in map.values) {
    if (edadMin > edad) {
      edadMin = edad;
    }
  }
  return edadMin;
}
