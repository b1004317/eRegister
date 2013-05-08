package uk.ac.shu.webarch.eregister
import grails.converters.*

class ProcessAttendanceController {

    def index() {

        withFormat {
      html result
      xml { render result as XML }
      json { render result as JSON }
    }

}
}

