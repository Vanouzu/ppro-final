// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uhk.vanouzu1.application.web;

import uhk.vanouzu1.application.web.MistnostiCollectionThymeleafController;
import uhk.vanouzu1.service.api.MistnostService;

privileged aspect MistnostiCollectionThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MistnostService MistnostiCollectionThymeleafController.mistnostService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MistnostService
     */
    public MistnostService MistnostiCollectionThymeleafController.getMistnostService() {
        return mistnostService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnostService
     */
    public void MistnostiCollectionThymeleafController.setMistnostService(MistnostService mistnostService) {
        this.mistnostService = mistnostService;
    }
    
}