package com.rent.happy.booking;

import org.springframework.stereotype.Service;

@Service
public class BookingServiceImpl implements BookingService {

    @Override
    public void noneNewDB(BookingDTO dto) {
        // 실제 DB 저장 로직 (예: MyBatis 매퍼 호출)
    }

    @Override
    public int calculateTotalPrice(String carName, int rentalDays, String insurance) {
        int baseRate = getBaseRateByCarName(carName);
        int insuranceExtra = 0;

        switch (insurance) {
            case "완전면책포함": insuranceExtra = 5000; break;
            case "슈퍼면책포함": insuranceExtra = 19500; break;
            default: insuranceExtra = 0;
        }

        return rentalDays * (baseRate + insuranceExtra);
    }

    @Override
    public int getBaseRateByCarName(String carName) {
        switch (carName) {
            case "2023 레이": return 49000;
            case "2022 캐스퍼": return 39600;
            case "2022 레이": return 37000;
            case "2025 아반떼": return 63000;
            case "2023 올뉴아반떼": return 49000;
            case "2022 더뉴K3": return 39800;
            case "2025 더뉴K5휘발유": return 75600;
            case "2024 쏘나타 디엣지 휘발유": return 65600;
            case "2023 K5 휘발유": return 53600;
            case "2022 쏘나타DN.8휘발유": return 45600;
            case "2025 디올뉴팰리세이드7인승": return 169000;
            case "2023 팰리세이드 7인승": return 124000;
            case "2025 디올뉴팰리세이드9인승": return 149000;
            case "2025 더뉴쏘렌토 7인승": return 136600;
            case "2023 스타리아 라운지9인승": return 129000;
            case "2023 카니발9인승": return 946000;
            case "캐스퍼/레이 랜덤": return 59000;
            case "올뉴아반떼_더뉴K3_랜덤": return 69000;
            default: return 49000;
        }
    }

	
	
}
