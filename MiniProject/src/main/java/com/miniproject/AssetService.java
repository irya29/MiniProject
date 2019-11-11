package com.miniproject;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AssetService {
	@Autowired
	private AssetRepository repo;
	
	public List<Asset> listAll() {
		return repo.findAll();
	}
	
	public void save(Asset asset) {
		repo.save(asset);
	}
	
	public Asset get(long assetid) {
		return repo.findById(assetid).get();
	}
	
	public void delete(long assetid) {
		repo.deleteById(assetid);
	}
}
