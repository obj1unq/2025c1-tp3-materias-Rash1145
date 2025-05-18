import universidad.*
import estudiante.*

const roque = new Estudiante(materias_aprobadas = #{elementosRoque, objetos_1_Roque, mate_1_Roque, basesRoque, bio_1_Roque, quimicaRoque}, carreras_en_curso = #{programacion, medicina})

const elementosRoque = new HistorialAcademico(materia = 'Elementos de Programacíon', nota = 5)
const mate_1_Roque = new HistorialAcademico(materia = 'Matemática 1', nota = 8)
const objetos_1_Roque = new HistorialAcademico(materia = 'Objetos 1', nota = 7)
const basesRoque = new HistorialAcademico(materia = 'Bases de Datos', nota = 4)
const bio_1_Roque = new HistorialAcademico(materia = 'Biología 1', nota = 4) 
const quimicaRoque = new HistorialAcademico(materia = 'Química', nota = 8)

const luisa = new Estudiante(materias_aprobadas = #{elementosLuisa, mate_1_Luisa, objetos_1_Luisa}, carreras_en_curso = #{programacion})

const elementosLuisa = new HistorialAcademico(materia = 'Elementos de Programacíon', nota = 6)
const mate_1_Luisa = new HistorialAcademico(materia = 'Matemática 1', nota = 9)
const objetos_1_Luisa = new HistorialAcademico(materia = 'Objetos 1', nota = 7)

const romina = new Estudiante(materias_aprobadas = #{elementosRomina, mate_1_Romina, objetos_1_Romina}, carreras_en_curso = #{programacion})

const elementosRomina = new HistorialAcademico(materia = 'Elementos de Programacíon', nota = 6)
const mate_1_Romina = new HistorialAcademico(materia = 'Matemática 1', nota = 9)
const objetos_1_Romina = new HistorialAcademico(materia = 'Objetos 1', nota = 7)

const alicia = new Estudiante(materias_aprobadas = #{elementosAlicia, mate_1_Alicia, objetos_1_Alicia}, carreras_en_curso = #{programacion})

const elementosAlicia = new HistorialAcademico(materia = 'Elementos de Programacíon', nota = 6)
const mate_1_Alicia = new HistorialAcademico(materia = 'Matemática 1', nota = 9)
const objetos_1_Alicia = new HistorialAcademico(materia = 'Objetos 1', nota = 7)

const ana = new Estudiante(materias_aprobadas = #{elementosAna}, carreras_en_curso = #{programacion})

const elementosAna = new HistorialAcademico(materia = 'Elementos de Programacíon', nota = 6)