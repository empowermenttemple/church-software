package com.empowerment



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PledgePaymentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PledgePayment.list(params), model:[pledgePaymentInstanceCount: PledgePayment.count()]
    }

    def show(PledgePayment pledgePaymentInstance) {
        respond pledgePaymentInstance
    }

    def create() {
        respond new PledgePayment(params)
    }

    @Transactional
    def save(PledgePayment pledgePaymentInstance) {
        if (pledgePaymentInstance == null) {
            notFound()
            return
        }

        if (pledgePaymentInstance.hasErrors()) {
            respond pledgePaymentInstance.errors, view:'create'
            return
        }

        pledgePaymentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pledgePayment.label', default: 'PledgePayment'), pledgePaymentInstance.id])
                redirect pledgePaymentInstance
            }
            '*' { respond pledgePaymentInstance, [status: CREATED] }
        }
    }

    def edit(PledgePayment pledgePaymentInstance) {
        respond pledgePaymentInstance
    }

    @Transactional
    def update(PledgePayment pledgePaymentInstance) {
        if (pledgePaymentInstance == null) {
            notFound()
            return
        }

        if (pledgePaymentInstance.hasErrors()) {
            respond pledgePaymentInstance.errors, view:'edit'
            return
        }

        pledgePaymentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PledgePayment.label', default: 'PledgePayment'), pledgePaymentInstance.id])
                redirect pledgePaymentInstance
            }
            '*'{ respond pledgePaymentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PledgePayment pledgePaymentInstance) {

        if (pledgePaymentInstance == null) {
            notFound()
            return
        }

        pledgePaymentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PledgePayment.label', default: 'PledgePayment'), pledgePaymentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pledgePayment.label', default: 'PledgePayment'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
