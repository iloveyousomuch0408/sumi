package com.rent.happy.booking;

import org.springframework.stereotype.Service;

@Service
public class BookingServiceImpl implements BookingService {

    @Override
    public void noneNewDB(BookingDTO dto) {
        // ���� DB ���� ���� (��: MyBatis ���� ȣ��)
    }

    @Override
    public int calculateTotalPrice(String carName, int rentalDays, String insurance) {
        int baseRate = getBaseRateByCarName(carName);
        int insuranceExtra = 0;

        switch (insurance) {
            case "������å����": insuranceExtra = 5000; break;
            case "���۸�å����": insuranceExtra = 19500; break;
            default: insuranceExtra = 0;
        }

        return rentalDays * (baseRate + insuranceExtra);
    }

    @Override
    public int getBaseRateByCarName(String carName) {
        switch (carName) {
            case "2023 ����": return 49000;
            case "2022 ĳ����": return 39600;
            case "2022 ����": return 37000;
            case "2025 �ƹݶ�": return 63000;
            case "2023 �ô��ƹݶ�": return 49000;
            case "2022 ����K3": return 39800;
            case "2025 ����K5�ֹ���": return 75600;
            case "2024 �Ÿ ���� �ֹ���": return 65600;
            case "2023 K5 �ֹ���": return 53600;
            case "2022 �ŸDN.8�ֹ���": return 45600;
            case "2025 ��ô��Ӹ����̵�7�ν�": return 169000;
            case "2023 �Ӹ����̵� 7�ν�": return 124000;
            case "2025 ��ô��Ӹ����̵�9�ν�": return 149000;
            case "2025 ������� 7�ν�": return 136600;
            case "2023 ��Ÿ���� �����9�ν�": return 129000;
            case "2023 ī�Ϲ�9�ν�": return 946000;
            case "ĳ����/���� ����": return 59000;
            case "�ô��ƹݶ�_����K3_����": return 69000;
            default: return 49000;
        }
    }

	
	
}
