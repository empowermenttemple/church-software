package com.empowerment

class PledgePayment {

	Pledges pledges
	BigDecimal amount
	Date dateCreated
	Date dateModified
	String createdBy
    static constraints = {
		dateModified: nullable: true
    }
}
