package com.dao;

import java.util.List;

import com.dto.FlightDetails;

public interface FlightDetailsDao {
	public Integer addFlight(FlightDetails flight);
	public List<FlightDetails> searchFlights(String source, String destination);
}
