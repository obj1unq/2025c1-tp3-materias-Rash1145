import universidad.*

// Medicina
const biologia_1 = new Materias(nombre = 'Biología 1', limiteCupo = 3, carrera = medicina)

const biologia_2 = new Materias(nombre = 'Biología 2', limiteCupo = 3, correlativas = #{biologia_1}, carrera = medicina)

const anatomia = new Materias(nombre = 'Anatomía General', limiteCupo = 3, carrera = medicina)

const quimica = new Materias(nombre = 'Química', limiteCupo = 3, carrera = medicina)

// Programacion
const objetos_1 = new Materias(nombre = 'Objetos 1', limiteCupo = 3, carrera = programacion)

const objetos_2 = new Materias(nombre = 'Objetos 2', limiteCupo = 3, carrera = programacion, correlativas = #{objetos_1, matematica_1})

const objetos_3 = new Materias(nombre = 'Objetos 3', limiteCupo = 3, carrera = programacion, correlativas = #{objetos_2, basesDeDatos})

const basesDeDatos = new Materias(nombre = 'Bases de Datos', limiteCupo = 3, carrera = programacion)

const matematica_1 = new Materias(nombre = 'Matemática 1', limiteCupo = 3, carrera = programacion)

const trabajoFinal = new Materias(nombre = 'Objetos 1', limiteCupo = 3, carrera = programacion)

const elementos = new Materias(nombre = 'Elementos de Programación', limiteCupo = 3, carrera = programacion)

const prograConcurrente = new Materias(nombre = 'Programación Concurrente', limiteCupo = 3, carrera = programacion, correlativas = #{objetos_1, basesDeDatos})

// Derecho
const latin = new Materias(nombre = 'Latín', limiteCupo = 3, carrera = derecho)

const derechoRomano = new Materias(nombre = 'Derecho Romano', limiteCupo = 3, carrera = derecho)

const derechoArgen = new Materias(nombre = 'Historia del Derecho Argentino', limiteCupo = 3, carrera = derecho)

const derechoPenal_1 = new Materias(nombre = 'Derecho Penal 1', limiteCupo = 3, carrera = derecho)

const derechoPenal_2 = new Materias(nombre = 'Derecho Penal 2', limiteCupo = 3, carrera = derecho)