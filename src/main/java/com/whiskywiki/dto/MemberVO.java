package com.whiskywiki.dto;

/*위 코드에서 admin 필드를 final로 선언하여 상수로 만들었으며, 기본값을 1로 설정했습니다. 
이렇게 하면 모든 MemberVO 인스턴스의 admin 필드 값은 1로 고정됩니다. 
따라서 웹페이지로 가입하는 사용자들의 기본 권한이 1(관리자)로 설정됩니다.
네, toString() 메서드에 admin 필드를 포함하는 것이 좋습니다. 
이렇게 함으로써 MemberVO 객체의 전체 정보를 문자열로 표현할 때 admin 필드의 값을 확인할 수 있습니다. 
또한, 코드의 일관성을 유지하여 나중에 필요한 경우 admin 필드의 값을 변경하더라도 
toString() 메서드를 수정하지 않아도 되므로 유지보수 측면에서도 좋습니다.*/

public class MemberVO {
    private String userid;
    private String pwd; 
    private String name; 
    private String birthdate; 
    private String email; 
    private final int admin = 1; // 상수로 지정하여 기본값을 1(관리자)로 설정

    // Getter 메서드
    public String getUserid() {
        return userid;
    }

    public String getPwd() {
        return pwd;
    }

    public String getName() {
        return name;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public String getEmail() {
        return email;
    }

    public int getAdmin() {
        return admin;
    }

    // Setter 메서드
    public void setUserid(String userid) {
        this.userid = userid;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // toString() 메서드 오버라이드
    @Override
    public String toString() {
        return "MemberVO{" +
                "userid='" + userid + '\'' +
                ", pwd='" + pwd + '\'' +
                ", name='" + name + '\'' +
                ", birthdate='" + birthdate + '\'' +
                ", email='" + email + '\'' +
                ", admin=" + admin +
                '}';
    }
}