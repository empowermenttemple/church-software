package com.empowerment



import static org.springframework.http.HttpStatus.*

import java.util.Date;
import liquibase.util.csv.opencsv.CSVReader

import grails.transaction.Transactional

@Transactional(readOnly = true)
class MemberController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Member.list(params), model:[memberInstanceCount: Member.count()]
    }

    def show(Member memberInstance) {
        respond memberInstance
    }

    def create() {
        respond new Member(params)
		
    }

	def getMembers(){
		response.setHeader("Content=disposition", "attachement;filename=Members.csv")
		def results = []
		for(u in Member.list()){
			def members = [u.firstname,u.lastname,u.phone]
			results << members
		}
		
		def result = 'Firstname, Lastname, Phone Number'
		results.each { row ->
			row.each {
				col += result += col + ','
				
			}
			result += '\n'
		}
		render (contentType: 'text/csv', test:result)
	}
    @Transactional
    def save(Member memberInstance) {
        if (memberInstance == null) {
            notFound()
            return
        }

        if (memberInstance.hasErrors()) {
            respond memberInstance.errors, view:'create'
            return
        }

        memberInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'member.label', default: 'Member'), memberInstance.id])
                redirect memberInstance
            }
            '*' { respond memberInstance, [status: CREATED] }
        }
    }

    def edit(Member memberInstance) {
        respond memberInstance
    }

    @Transactional
    def update(Member memberInstance) {
        if (memberInstance == null) {
            notFound()
            return
        }

        if (memberInstance.hasErrors()) {
            respond memberInstance.errors, view:'edit'
            return
        }

        memberInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Member.label', default: 'Member'), memberInstance.id])
                redirect memberInstance
            }
            '*'{ respond memberInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Member memberInstance) {

        if (memberInstance == null) {
            notFound()
            return
        }

        memberInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Member.label', default: 'Member'), memberInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'member.label', default: 'Member'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
class MemberCommand{
	Long id
	String firstname
	String lastname
	String email
	String phone
	String gender
	String agegroup
	String address
	String address1
	String city
	String state
	String zip
	String createdBy
	Date	dateCreated
	Date	dateModified

	static constraints = {
		email email: true
		phone phone: true
		dateModified nullable: true
	}

	static mapping = { cache true }
}