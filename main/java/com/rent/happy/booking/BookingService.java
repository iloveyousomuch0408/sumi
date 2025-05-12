package com.rent.happy.booking;

import org.springframework.stereotype.Service;

@Service

public interface BookingService {

    void noneNewDB(BookingDTO dto);

	int calculateTotalPrice(String string, int rental_DAYS, String insurance);


}

