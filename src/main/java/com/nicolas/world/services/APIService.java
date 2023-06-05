package com.nicolas.world.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nicolas.world.repositories.PaisRepo;

@Service
public class APIService {

	@Autowired
	private PaisRepo repo;

	// consulta1
	public List<Object[]> paisesHablaSlovene() {
		return repo.paisesHablanSloveno();
	}

	// consulta2
	public List<Object[]> totalCiudadesPais() {
		return repo.totalCiudadesPais();
	}

	// consulta3
	public List<Object[]> ciudadesMexico() {
		return repo.ciudadesMexico();
	}

	// consulta4
	public List<Object[]> mayora89() {
		return repo.mayorA89();
	}

	// consulta5
	public List<Object[]> areaPoblacion() {
		return repo.areaPoblacion();
	}

	// consulta6
	public List<Object[]> monarquia() {
		return repo.monarquia();
	}

	// consulta7
	public List<Object[]> argentina() {
		return repo.argentina();
	}

	// consulta8
	public List<Object[]> sumarPaises() {
		return repo.sumarPaises();
	}
}
