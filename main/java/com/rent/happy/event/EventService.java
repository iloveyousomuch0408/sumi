package com.rent.happy.event;

import java.util.List;

public interface EventService {
    List<EventDTO> searchEvents(String keyword);
}
