// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package chirpletportlet.model;

import chirpletportlet.model.Nest;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Nest_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Nest.entityManager;
    
    public static final EntityManager Nest.entityManager() {
        EntityManager em = new Nest().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Nest.countNests() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Nest o", Long.class).getSingleResult();
    }
    
    public static List<Nest> Nest.findAllNests() {
        return entityManager().createQuery("SELECT o FROM Nest o", Nest.class).getResultList();
    }
    
    public static Nest Nest.findNest(Long id) {
        if (id == null) return null;
        return entityManager().find(Nest.class, id);
    }
    
    public static List<Nest> Nest.findNestEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Nest o", Nest.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Nest.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Nest.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Nest attached = Nest.findNest(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Nest.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Nest.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Nest Nest.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Nest merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
