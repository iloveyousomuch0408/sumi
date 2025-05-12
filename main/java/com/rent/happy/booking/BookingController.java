package com.rent.happy.booking;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Map;


@Controller
public class BookingController {

    @Autowired
    SqlSession sqlSession;

    @Autowired
    BookingService bookingService; // Spring 서비스 Bean

    @RequestMapping(value = "/booking")
    public String cbooking() {
        return "booking"; // 반드시 /WEB-INF/views/booking.jsp 존재해야 함
    }

    @RequestMapping(value = "/car1", method = RequestMethod.POST) // 면책미포함 & 경형차량
    public String cnoneNew(HttpServletRequest request, Model model) {
        BookingDTO dto = new BookingDTO();

        // 폼 파라미터 수집
        dto.setRENTAL_YEAR(Integer.parseInt(request.getParameter("rYear")));
        dto.setRENTAL_MONTH(Integer.parseInt(request.getParameter("rMonth")));
        dto.setRENTAL_DAY(Integer.parseInt(request.getParameter("rDay")));
        dto.setRENTAL_TIME(request.getParameter("rTime"));
        dto.setRETURN_YEAR(Integer.parseInt(request.getParameter("tYear")));
        dto.setRETURN_MONTH(Integer.parseInt(request.getParameter("tMonth")));
        dto.setRETURN_DAY(Integer.parseInt(request.getParameter("tDay")));
        dto.setRETURN_TIME(request.getParameter("tTime"));
        dto.setINSURANCE(request.getParameter("insurance"));
        dto.setCAR_TYPE(request.getParameter("car"));

        // 렌트 일수 계산
        LocalDate start = LocalDate.of(dto.getRENTAL_YEAR(), dto.getRENTAL_MONTH(), dto.getRENTAL_DAY());
        LocalDate end = LocalDate.of(dto.getRETURN_YEAR(), dto.getRETURN_MONTH(), dto.getRETURN_DAY());
        long rentalDays = ChronoUnit.DAYS.between(start, end);
        if (rentalDays < 1) rentalDays = 1;
        dto.setRENTAL_DAYS((int) rentalDays);

        // 총 금액 계산 (서비스 레이어 사용)
        int totalPrice = bookingService.calculateTotalPrice(dto.getCarName(), dto.getRENTAL_DAYS(), dto.getINSURANCE());
        dto.setTotalPrice(totalPrice);

        // DB 저장 (MyBatis 매퍼 사용)
        BookingService mapper = sqlSession.getMapper(BookingService.class);
        mapper.noneNewDB(dto);

        model.addAttribute("dto", dto);
        return "car1"; // 반드시 /WEB-INF/views/car1.jsp 존재해야 함
    }

    @RequestMapping(value = "/car", method = RequestMethod.GET)
    public String showCarPage(@RequestParam Map<String, String> params, Model model) {
        int rYear = Integer.parseInt(params.get("rYear"));
        int rMonth = Integer.parseInt(params.get("rMonth"));
        int rDay = Integer.parseInt(params.get("rDay"));
        int tYear = Integer.parseInt(params.get("tYear"));
        int tMonth = Integer.parseInt(params.get("tMonth"));
        int tDay = Integer.parseInt(params.get("tDay"));

        String carName = params.get("carName");
        String insurance = params.get("insurance");

        // 렌트 일수 계산
        LocalDate start = LocalDate.of(rYear, rMonth, rDay);
        LocalDate end = LocalDate.of(tYear, tMonth, tDay);
        long rentalDays = ChronoUnit.DAYS.between(start, end);
        if (rentalDays < 1) rentalDays = 1;

        int totalPrice = bookingService.calculateTotalPrice(carName, (int) rentalDays, insurance);

        BookingDTO dto = new BookingDTO();
        dto.setRENTAL_YEAR(rYear);
        dto.setRENTAL_MONTH(rMonth);
        dto.setRENTAL_DAY(rDay);
        dto.setRETURN_YEAR(tYear);
        dto.setRETURN_MONTH(tMonth);
        dto.setRETURN_DAY(tDay);
        dto.setINSURANCE(insurance);
        dto.setCarName(carName);
        dto.setRENTAL_DAYS((int) rentalDays);
        dto.setTotalPrice(totalPrice);

        model.addAttribute("dto", dto);
        return "car"; // 반드시 /WEB-INF/views/car.jsp 존재해야 함
    }
}
