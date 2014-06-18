package com.empowerment



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PledgesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pledges.list(params), model:[pledgesInstanceCount: Pledges.count()]
    }

    def show(Pledges pledgesInstance) {
        respond pledgesInstance
    }

    def create() {
        respond new Pledges(params)
    }

    @Transactional
    def save(Pledges pledgesInstance) {
        if (pledgesInstance == null) {
            notFound()
            return
        }

        if (pledgesInstance.hasErrors()) {
            respond pledgesInstance.errors, view:'create'
            return
        }

        pledgesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pledges.label', default: 'Pledges'), pledgesInstance.id])
                redirect pledgesInstance
            }
            '*' { respond pledgesInstance, [status: CREATED] }
        }
    }

    def edit(Pledges pledgesInstance) {
        respond pledgesInstance
    }

    @Transactional
    def update(Pledges pledgesInstance) {
        if (pledgesInstance == null) {
            notFound()
            return
        }

        if (pledgesInstance.hasErrors()) {
            respond pledgesInstance.errors, view:'edit'
            return
        }

        pledgesInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pledges.label', default: 'Pledges'), pledgesInstance.id])
                redirect pledgesInstance
            }
            '*'{ respond pledgesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pledges pledgesInstance) {

        if (pledgesInstance == null) {
            notFound()
            return
        }

        pledgesInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pledges.label', default: 'Pledges'), pledgesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pledges.label', default: 'Pledges'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
