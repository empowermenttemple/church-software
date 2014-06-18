package com.empowerment

class Offering {

    String service
    BigDecimal amountCheck
    BigDecimal amountCash
    Date offeringDate
    String approvedBy
	
    static constraints = {
    }
	static mapping = {
		cache true
	}
}
