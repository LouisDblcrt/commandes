package epsi.commandesmonitoring.model;

public enum Etat {
DEMANDE(0,"DEMANDE"),
EN_PREPARATION(1,"EN PREPARATION"),
FINI(2,"FINI"),
HISTORISEE(3,"HISTORISEE");
	
	private int code;
	private String value;
	Etat(int code, String value){
		this.code=code;
		this.value=value;
	}
	
	 public static Etat valueOf(int code) {
	        for (Etat status : Etat.values()) {
	            if (status.getCode()==code) {
	                return status;
	            }
	        }
	        throw new IllegalArgumentException("Unknown user status: " + code);
	    }

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	 
}
