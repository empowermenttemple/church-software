package com.empowerment

class Pledges {
	
	Pledge pledge
	Member member
	Date dateCreated
	Date datemodified
	BigDecimal amount
	String createdBy
	
    static constraints = {
		datemodified nullable: true
    }
}
