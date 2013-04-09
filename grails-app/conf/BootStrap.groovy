import uk.ac.shu.webarch.eregister.*

class BootStrap {

    def init = { servletContext ->

    println("BootStrap::init");

    def ian_instructor = Instructor.findByStaffNumber('646345d') ?: new Instructor(staffNumber:'646345d', name:'Ian Ibbotson').save();
    def matthew_instructor = Instructor.findByStaffNumber('456789u') ?: new Instructor(staffNumber:'456789u', name:'Matthew Love').save();

    def web_arch_course = Course.findByCourseID('12345') ?: new Course(courseID:'12345',
                                                                         courseName:'Web Architectures',
                                                                            instructor:matthew_instructor
                                                                                ).save();



    }
    def destroy = {
    }
}

