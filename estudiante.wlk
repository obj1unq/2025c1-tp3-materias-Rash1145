import universidad.*
import materias.*

class Estudiante {

    const property materias_aprobadas = #{}

    const property carreras_en_curso = #{}

    const property materias_en_curso = #{}

    const property materias_en_espera = #{} 

    method cantidad_materias_aprobadas(){
       return materias_aprobadas.size()
    }

    method validar_carrera(carrera){
        if (not carreras_en_curso.contains(carrera)){
            self.error('No cursa esta carrera')
        }
    }

    method materiasDisponiblesPara(carrera){
        const materiasDisponibles = carrera.materias()

        self.validar_carrera(carrera)
        materias_aprobadas.forEach({materia => materiasDisponibles.remove(materia.materia())})
        materias_en_curso.forEach({materia => materiasDisponibles.remove(materia.nombre())})
        return materiasDisponibles
    }

    method aprobo(materia){
        self.ya_aprobada(materia)
        materia.validarAprobacion()
        materias_aprobadas.add(materia)
        return materia.nota()
    }

    method ya_aprobada(materia){
        if(materias_aprobadas.any({aprobada => aprobada == materia})){
            self.error('Ya esta aprobada')
        }
    }

    method promedio(){
        return (materias_aprobadas.map({materia => materia.nota()})).sum() / self.cantidad_materias_aprobadas()
    }

    method esta_aprobada(materia){
       return materias_aprobadas.any({aprobada => aprobada.materia() == materia.nombre()})
    }

    method validar_aprobacion(materia){
        if (self.esta_aprobada(materia)){
            self.error('Ya esta aprobada')
        }
    }

    method materias_a_cursar(){
        return carreras_en_curso.map({carrera => carrera.materias()}).flatten().asSet()
    }

    method esta_en_carrera(carrera){
        return carreras_en_curso.contains(carrera)
    }

    method correlativas_aprobadas(materia){
        return materia.correlativas().all({correlativa => materias_aprobadas.any({aprobado => aprobado.materia() == correlativa.nombre()})})
    }

    method inscripcion(materia){
        self.validar_inscripcion(materia)
        if(materia.cupo().size() == materia.limiteCupo()){
            materia.listaDeEspera().add(self)
        } else{
            materia.cupo().add(self)
            materias_en_curso.add(materia)
        }
    }

    method darse_baja(materia){
        materias_en_curso.remove(materia)
        materia.cupo().remove(self)
        materia.cupo().add(materia.primero_en_espera())
        materia.primero_en_espera().materias_en_espera().remove(materia)
        materia.listaDeEspera().remove(materia.primero_en_espera())
    }

    method estaEnPlanEstudio(materia){
        return self.materias_a_cursar().contains(materia)
    }

    method estaInscriptoOEnEspera(materia){
        return materia.cupo().contains(self) or materia.listaDeEspera().contains(self)
    }

    method requisitosInscripcion(materia){
    return not (self.esta_aprobada(materia) or self.estaInscriptoOEnEspera(materia) or (self.correlativas_aprobadas(materia)) or (self.estaEnPlanEstudio(materia)))
    }

    method validar_inscripcion(materia) {
        if(self.requisitosInscripcion(materia)){
            self.error('No puede inscribirse')
        }
    }

    method enCursoYEspera(){
        return materias_en_curso + materias_en_espera
    }
}