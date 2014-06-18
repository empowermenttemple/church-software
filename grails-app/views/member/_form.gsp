<%@ page import="com.empowerment.Member" %>
<div class="lampstand-outer lampstand-required" >
	<div class="lampstand-inner">
		<label id="label"for="input-title">First Name:</label> <input type="text"
			name="firstname" id="firstname" value="${membersInstance?.firstname}"  required id="firstname"
			size="50">
	</div>
</div>
<div class="lampstand-outer" >
	<div class="lampstand-inner">
		<label id="label"for="input-title">Last Name:</label> <input type="text"
			id="lastname" name="lastname" value="${membersInstance?.lastname}" required id="lastname"
			size="50">
	</div>
</div>
<div class="lampstand-outer lampstand-required">
	<div class="lampstand-inner">
		<label id="label" for="email">Email Address</label> <input type="email"
			name="email" id="email" required size="50" placeholder="username@company.com"
			value="${membersInstance?.email}">
	</div>
</div>

<div class="lampstand-outer lampstand-required">
	<div class="lampstand-inner">
		<label id="label"for="phone">Phone Number</label> <input type="text"
			name="phone" id="phone" placeholder="XXX-XXX-XXXX"
			value="${membersInstance?.phone}">
	</div>
</div>

<div class="lampstand-outer lampstand-required">
	<div class="lampstand-inner">
		<label id="label"for="address">Current Address:</label> <input type="text"
			name="address" id="address" required size="50"value="${membersInstance?.address}">
	</div>
</div>
<div class="lampstand-outer lampstand-required">
	<div class="lampstand-inner">
		<label id="label"for="address1">Address (Optional):</label> <input type="text"
			name="address1" id="address1" size="50" value="${membersInstance?.address1}" 
			placeholder="Apt #, Suite Optional">
	</div>
</div>
<div class="lampstand-outer lampstand-required">
	<div class="lampstand-inner">
		<label id="label"for="city">City:</label> 
                <input type="text" name="city" id="city" placeholder="City"  required size="15" value="${membersInstance?.city}">
				</div>
			</div>
<div class="lampstand-outer lampstand-required">
	<div class="lampstand-inner">			
	<label id="label"for="state">State:</label> 
				<g:if test="${membersInstance?.state  }">
				<input type="text" name="state" value="${membersInstance?.state }" size="15">
				</g:if>
				<g:else>
				<select id="state" name="state">
					<option value="" selected>Select your State</option>
					<option value="AL">Alabama</option>
					<option value="AK">Alaska</option>
					<option value="AZ">Arizona</option>
					<option value="AR">Arkansas</option>
					<option value="CA">California</option>
					<option value="CO">Colorado</option>
					<option value="CT">Connecticut</option>
					<option value="DE">Delaware</option>
					<option value="FL">Florida</option>
					<option value="GA">Georgia</option>
					<option value="HI">Hawaii</option>
					<option value="ID">Idaho</option>
					<option value="IL">Illinois</option>
					<option value="IN">Indiana</option>
					<option value="IA">Iowa</option>
					<option value="KS">Kansas</option>
					<option value="KY">Kentucky</option>
					<option value="LA">Louisiana</option>
					<option value="ME">Maine</option>
					<option value="MD">Maryland</option>
					<option value="MA">Massachusetts</option>
					<option value="MI">Michigan</option>
					<option value="MN">Minnesota</option>
					<option value="MS">Mississippi</option>
					<option value="MO">Missouri</option>
					<option value="MT">Montana</option>
					<option value="NE">Nebraska</option>
					<option value="NV">Nevada</option>
					<option value="NH">New Hampshire</option>
					<option value="NJ">New Jersey</option>
					<option value="NM">New Mexico</option>
					<option value="NY">New York</option>
					<option value="NC">North Carolina</option>
					<option value="ND">North Dakota</option>
					<option value="OH">Ohio</option>
					<option value="OK">Oklahoma</option>
					<option value="OR">Oregon</option>
					<option value="PA">Pennsylvania</option>
					<option value="RI">Rhode Island</option>
					<option value="SC">South Carolina</option>
					<option value="SD">South Dakota</option>
					<option value="TN">Tennessee</option>
					<option value="TX">Texas</option>
					<option value="UT">Utah</option>
					<option value="VT">Vermont</option>
					<option value="VA">Virginia</option>
					<option value="WA">Washington</option>
					<option value="WV">West Virginia</option>
					<option value="WI">Wisconsin</option>
					<option value="WY">Wyoming</option>
				</select>
				</g:else>
			</div>
		</div>
                <!--<g:if test="{membersInstance}">
                   <input type="text" name="state" id="city"  size="10" value="${membersInstance?.state}">
                </g:if>
		                <g:else>-->

				<!--</g:else>-->
<div class="lampstand-outer lampstand-required">
	<div class="lampstand-inner">
	<label id="label"for="zip">Zip Code:</label> 
           <input type="text" name="zip" id="zip" placeholder="Zip Code" value="${membersInstance?.zip}" size="8" maxLength="5">
	</div>
</div>
<div class="lampstand-outer lampstand-required">
	<div class="lampstand-inner">
			<label id="label"for="gender"> <g:message code="members.gender.label"
					default="Gender:" />

			</label>
                    <g:if test="${membersInstance?.gender}">
                       <input type="text" name="gender" id="gender" value="${membersInstance?.gender}" >
                    </g:if>
                    <g:else>
			<g:select id="gender" name="gender"
				from="${['Male','Female']}"
				valueMessagePrefix="members.gender"
                                value="${membersInstance?.gender}"
				noSelection="['': 'Select Gender']" />
                        </g:else>
		</div>
	</div>


<div class="lampstand-outer lampstand-required">
	<div class="lampstand-inner">
		<label id="label" for="agegroup">Age Group:</label> 
                    <g:if test="${membersInstance?.agegroup}">
                       <input type="text" name="agegroup" value="${membersInstance?.agegroup}" >
                    </g:if>
                    <g:else>
                        <select id='agegroup' name='agegroup'>
                        <option value="">Select an Age Group</option>
                            <option value="0-18">0-18</option>
                            <option value="19-25">19-25</option>
                            <option value="26-34">26-34</option>
                            <option value="35-45">35-45</option>
                            <option value="46-55">46-55</option>
                            <option value="56+">56+</option>
                        </select>
                        </g:else>
	</div>
</div>
