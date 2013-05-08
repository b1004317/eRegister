package uk.ac.shu.webarch.eregister

class ApplyController {

    def index() { }

    def processAttendance (){
    def result = [:]
       println params.student
       println params.course
       println (params)
       result.student = params.student
       result.course = params.course


 def studentlocated = Student.findByStudentNumber(params.student)
 def sheetlocated = RegistrationSheet.findByLessonnumber(params.course)

println("studentlocated=${studentlocated}")
println("sheetlocated=${sheetlocated}")
def newRegisterEntry = new RegisterEntry(studentID:studentlocated, courseID:sheetlocated).save()
render (view: 'attendance' , model:result)
    }
}

