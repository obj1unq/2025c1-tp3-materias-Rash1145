class Carrera {
    const property materias = #{}
}

const programacion = new Carrera( materias = #{'Elementos de Programación', 'Matemática 1', 'Objetos 1', 'Objetos 2', 'Objetos 3', 'Trabajo Final', 'Bases de Datos', 'Programación Concurrente'})
  
const medicina = new Carrera( materias = #{'Química', 'Biología 1', 'Biología 2', 'Anatomía General'})

const derecho = new Carrera ( materias = #{'Latín', 'Derecho Romano', 'Historia del Derecho Argentino', 'Derecho Penal 1', 'Derecho Penal 2'})

class Materias {
    var property nombre

    var property carrera 

    var property limiteCupo 

    var property correlativas = #{} 

    var property cupo = []

    var property listaDeEspera = []

    method primero_en_espera(){
       return self.listaDeEspera().first()
    }
}

class HistorialAcademico{
    
    var property materia
    var property nota

    method validarAprobacion(){
        if (self.nota() < 4){
            self.error('No esta aprobada')
        }
    }
}