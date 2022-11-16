package lk.abcd.demoae2project.repository;

import lk.abcd.demoae2project.model.Package;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PackageRepository extends JpaRepository<Package, Integer>{
}
