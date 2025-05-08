package com.rent.happy.booking;

import org.springframework.stereotype.Service;

@Service

public interface BookingService {

    void noneNewDB(BookingDTO dto);

    int calculateTotalPrice(String carName, int rentalDays, String insurance);  // 👈 추가

    int getBaseRateByCarName(String carName);                                   // 👈 추가
}

