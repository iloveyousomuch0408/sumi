package com.rent.happy.event;

import java.util.ArrayList;
import java.util.List;

public interface EventService {
    List<EventDTO> searchEvents(String keyword);

	ArrayList<EventDTO> search(String keyword);

	void sa(String id, String title);
}
