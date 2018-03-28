package com.sts.inventory.controller;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.sts.inventory.dto.UserDTO;
@Component
public class ValidationController implements Validator{

	@Override
	public boolean supports(Class<?> paramClass) {
		// TODO Auto-generated method stub
		return UserDTO.class.equals(paramClass);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		// TODO Auto-generated method stub
		UserDTO userDTO =(UserDTO) obj;
		if(userDTO.getContNo().length() >10 || userDTO.getContNo().length()<10) {
			errors.reject("Enter valid Contact Number");
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fName", "fName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lName", "lName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "address.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "description.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "userName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "password.required");
	}

}
