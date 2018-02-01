// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uhk.vanouzu1.service.impl;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import uhk.vanouzu1.model.Mistnost;
import uhk.vanouzu1.model.MistnostInfo;
import uhk.vanouzu1.repository.MistnostRepository;
import uhk.vanouzu1.service.impl.MistnostServiceImpl;

privileged aspect MistnostServiceImpl_Roo_Service_Impl {
    
    declare @type: MistnostServiceImpl: @Service;
    
    declare @type: MistnostServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MistnostRepository MistnostServiceImpl.mistnostRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param mistnostRepository
     */
    @Autowired
    public MistnostServiceImpl.new(MistnostRepository mistnostRepository) {
        setMistnostRepository(mistnostRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MistnostRepository
     */
    public MistnostRepository MistnostServiceImpl.getMistnostRepository() {
        return mistnostRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnostRepository
     */
    public void MistnostServiceImpl.setMistnostRepository(MistnostRepository mistnostRepository) {
        this.mistnostRepository = mistnostRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnost
     */
    @Transactional
    public void MistnostServiceImpl.delete(Mistnost mistnost) {
        getMistnostRepository().delete(mistnost);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Mistnost> MistnostServiceImpl.save(Iterable<Mistnost> entities) {
        return getMistnostRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void MistnostServiceImpl.delete(Iterable<Long> ids) {
        List<Mistnost> toDelete = getMistnostRepository().findAll(ids);
        getMistnostRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Mistnost
     */
    @Transactional
    public Mistnost MistnostServiceImpl.save(Mistnost entity) {
        return getMistnostRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Mistnost
     */
    public Mistnost MistnostServiceImpl.findOne(Long id) {
        return getMistnostRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Mistnost
     */
    public Mistnost MistnostServiceImpl.findOneForUpdate(Long id) {
        return getMistnostRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Mistnost> MistnostServiceImpl.findAll(Iterable<Long> ids) {
        return getMistnostRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Mistnost> MistnostServiceImpl.findAll() {
        return getMistnostRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long MistnostServiceImpl.count() {
        return getMistnostRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<MistnostInfo> MistnostServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getMistnostRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<MistnostInfo> MistnostServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getMistnostRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Mistnost> MistnostServiceImpl.getEntityType() {
        return Mistnost.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> MistnostServiceImpl.getIdType() {
        return Long.class;
    }
    
}
