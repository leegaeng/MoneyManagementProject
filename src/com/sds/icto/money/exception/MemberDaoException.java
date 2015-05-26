package com.sds.icto.money.exception;

public class MemberDaoException extends RuntimeException {

	public MemberDaoException(){
		super("MemberDao Exception");
	}
	
	public MemberDaoException(String msg){
		super(msg);
	}
	
	
}
