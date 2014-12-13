/**
 * zsl
 */
package com.zsl.idating.entity;

import java.sql.Blob;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * @author zsl
 */
@Entity
@Table(name = "users",catalog="idating", uniqueConstraints = @UniqueConstraint(columnNames = "id"))
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", unique = true, nullable = false)
	private Long id;

	@Column(name = "name")
	private String name;
	
	@Column(name = "username", nullable = false, length = 50)
	private String username;

	@Column(name = "password", nullable = false, length = 50)
	private String password;
	
	@Column(name="enabled")
	private int enabled;

	@Column(name = "useraddress")
	private String userAddress;
	
	@Column(name = "sex")
	private Integer sex;
	
	@Column(name = "birthday")
	private Date birthDay;
	
	@Column(name = "bloodtype")
	private Integer bloodType;
	
	@Column(name = "shengxiao")
	private String shengXiao;
	
	@Column(name = "xingzuo")
	private String xingZuo;
	
	@Column(name = "hometown")
	private String homeTown;
	
	@Column(name = "level")
	private Integer level;
	
	@Column(name = "englishname")
	private String englishName;
	
	@Column(name = "signature")
	private String signature;
	
	@Column(name = "createtime")
	private Date createTime;

	@Column(name = "lastlogintime")
	private Date lastlogintime;

	@Column(name = "logontime")
	private Date logonTime;
	
	@Column(name = "phone")
	private String phone;
	
	@Column(name = "homephone")
	private String homePhone;
	
	@Column(name = "qq")
	private String qq;
	
	@Column(name = "msn")
	private String msn;
	
	@Column(name = "homepage")
	private String homePage;
	
	@Column(name = "language")
	private String language;
	
	@Column(name = "career")
	private String career;

	@Column(name = "xueli")
	private String xueli;
	
	@Column(name = "school")
	private String school;
	
	@Column(name = "selfdesc")
	private String selfdesc;
	
	@Column(name = "image")
	private Blob image;

	@Column(name = "groupid")
	private Long groupId;
	
	@Column(name = "loginip")
	private Long loginip;

	@Column(name = "type")
	private Integer type;

	@Column(name = "cardinfo")
	private String cardinfo;

	@Column(name = "logoncnt")
	private Long logoncnt;
	
	@Column(name="usertype")
	private int usertype;
	/**
	@Transient
	private Set<Order> orders;
	*/

	public User(String userName, String password) {
		this.username = userName;
		this.password = password;
	}

	public User() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Date getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}

	public String getShengXiao() {
		return shengXiao;
	}

	public Integer getBloodType() {
		return bloodType;
	}

	public void setBloodType(Integer bloodType) {
		this.bloodType = bloodType;
	}

	public Date getLogonTime() {
		return logonTime;
	}

	public void setLogonTime(Date logonTime) {
		this.logonTime = logonTime;
	}

	public void setShengXiao(String shengXiao) {
		this.shengXiao = shengXiao;
	}

	public String getXingZuo() {
		return xingZuo;
	}

	public void setXingZuo(String xingZuo) {
		this.xingZuo = xingZuo;
	}

	public String getHomeTown() {
		return homeTown;
	}

	public void setHomeTown(String homeTown) {
		this.homeTown = homeTown;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getEnglishName() {
		return englishName;
	}

	public void setEnglishName(String englishName) {
		this.englishName = englishName;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getLastlogintime() {
		return lastlogintime;
	}

	public void setLastlogintime(Date lastlogintime) {
		this.lastlogintime = lastlogintime;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getHomePhone() {
		return homePhone;
	}

	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getMsn() {
		return msn;
	}

	public void setMsn(String msn) {
		this.msn = msn;
	}

	public String getHomePage() {
		return homePage;
	}

	public void setHomePage(String homePage) {
		this.homePage = homePage;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getXueli() {
		return xueli;
	}

	public void setXueli(String xueli) {
		this.xueli = xueli;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getSelfdesc() {
		return selfdesc;
	}

	public void setSelfdesc(String selfdesc) {
		this.selfdesc = selfdesc;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}

	public Long getGroupId() {
		return groupId;
	}

	public void setGroupId(Long groupId) {
		this.groupId = groupId;
	}

	public Long getLoginip() {
		return loginip;
	}

	public void setLoginip(Long loginip) {
		this.loginip = loginip;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getCardinfo() {
		return cardinfo;
	}

	public void setCardinfo(String cardinfo) {
		this.cardinfo = cardinfo;
	}

	public Long getLogoncnt() {
		return logoncnt;
	}

	public void setLogoncnt(Long logoncnt) {
		this.logoncnt = logoncnt;
	}

	public int getUsertype() {
		return usertype;
	}

	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}
}
