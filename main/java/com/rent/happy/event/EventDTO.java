package com.rent.happy.event;



public class EventDTO {
   String id;
   String title;
   String period;
   String image_url;
   String keyword;
public EventDTO() {
	super();
	// TODO Auto-generated constructor stub
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getPeriod() {
	return period;
}
public void setPeriod(String period) {
	this.period = period;
}
public String getImage_url() {
	return image_url;
}
public void setImage_url(String image_url) {
	this.image_url = image_url;
}

}
