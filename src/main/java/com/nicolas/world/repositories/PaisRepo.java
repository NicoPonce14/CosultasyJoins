package com.nicolas.world.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.nicolas.world.models.Pais;

public interface PaisRepo extends CrudRepository<Pais, Long> {

	// consulta1
	@Query(value = "select c.name,l.language,l.percentage\r\n" + "from countries c join languages l\r\n"
			+ "on c.id = l.country_id\r\n" + "where l.language=\"Slovene\"\r\n"
			+ "order by l.percentage desc;", nativeQuery = true)
	List<Object[]> paisesHablanSloveno();

	// consulta2
	@Query(value = "select c.name,count(*) as \"total\"\r\n" + "from countries c join cities ci\r\n"
			+ "on c.id=ci.country_id\r\n" + "group by c.name\r\n" + "order by count(*) desc;", nativeQuery = true)
	List<Object[]> totalCiudadesPais();

	// consulta3
	@Query(value = "select name,population\r\n" + "from cities \r\n" + "where country_id = 136 and\r\n"
			+ "population>500000\r\n" + "order by population desc;", nativeQuery = true)
	List<Object[]> ciudadesMexico();

	// consulta4
	@Query(value = "select c.name,l.language,l.percentage\r\n" + "from countries c join languages l\r\n"
			+ "on c.id = l.country_id\r\n" + "where l.percentage>89\r\n"
			+ "order by l.percentage desc;", nativeQuery = true)
	List<Object[]> mayorA89();

	// consulta5
	@Query(value = "select name, surface_area,population\r\n" + "from countries \r\n"
			+ "where surface_area<501 and population>100000;", nativeQuery = true)
	List<Object[]> areaPoblacion();

	// consulta6
	@Query(value = "select name,government_form,capital,life_expectancy\r\n" + "from countries\r\n"
			+ "where government_form ='Constitutional Monarchy'\r\n"
			+ "and capital>200 and life_expectancy>75;", nativeQuery = true)
	List<Object[]> monarquia();

	// consulta7
	@Query(value = "select c.name,ci.name,ci.district,ci.population\r\n" + "from countries c join cities ci\r\n"
			+ "on c.id=ci.country_id\r\n" + "where ci.district like 'buenos%' and\r\n"
			+ "ci.population>500000;", nativeQuery = true)
	List<Object[]> argentina();
	
	// consulta8
	@Query(value = "select c.region,count(*) as countries\r\n"
			+ "from countries c\r\n"
			+ "group by region\r\n"
			+ "order by count(*) desc;", nativeQuery = true)
	List<Object[]> sumarPaises();
	
	

}
