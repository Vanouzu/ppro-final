// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package uhk.vanouzu1.application.web;

import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Locale;
import javax.validation.Valid;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;
import uhk.vanouzu1.application.web.MistnostiCollectionThymeleafController;
import uhk.vanouzu1.application.web.MistnostiItemThymeleafController;
import uhk.vanouzu1.application.web.MistnostiItemThymeleafLinkFactory;
import uhk.vanouzu1.model.Mistnost;
import uhk.vanouzu1.service.api.MistnostService;

privileged aspect MistnostiItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: MistnostiItemThymeleafController: @Controller;
    
    declare @type: MistnostiItemThymeleafController: @RequestMapping(value = "/mistnosti/{mistnost}", name = "MistnostiItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource MistnostiItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<MistnostiItemThymeleafController> MistnostiItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<MistnostiCollectionThymeleafController> MistnostiItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param mistnostService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public MistnostiItemThymeleafController.new(MistnostService mistnostService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setMistnostService(mistnostService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(MistnostiItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(MistnostiCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource MistnostiItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void MistnostiItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<MistnostiItemThymeleafController> MistnostiItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void MistnostiItemThymeleafController.setItemLink(MethodLinkBuilderFactory<MistnostiItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<MistnostiCollectionThymeleafController> MistnostiItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void MistnostiItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<MistnostiCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Mistnost
     */
    @ModelAttribute
    public Mistnost MistnostiItemThymeleafController.getMistnost(@PathVariable("mistnost") Long id, Locale locale, HttpMethod method) {
        Mistnost mistnost = null;
        if (HttpMethod.PUT.equals(method)) {
            mistnost = mistnostService.findOneForUpdate(id);
        } else {
            mistnost = mistnostService.findOne(id);
        }
        
        if (mistnost == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Mistnost", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return mistnost;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnost
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView MistnostiItemThymeleafController.show(@ModelAttribute Mistnost mistnost, Model model) {
        model.addAttribute("mistnost", mistnost);
        return new ModelAndView("mistnosti/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnost
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView MistnostiItemThymeleafController.showInline(@ModelAttribute Mistnost mistnost, Model model) {
        model.addAttribute("mistnost", mistnost);
        return new ModelAndView("mistnosti/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("mistnost")
    public void MistnostiItemThymeleafController.initMistnostBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void MistnostiItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void MistnostiItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnost
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView MistnostiItemThymeleafController.editForm(@ModelAttribute Mistnost mistnost, Model model) {
        populateForm(model);
        
        model.addAttribute("mistnost", mistnost);
        return new ModelAndView("mistnosti/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnost
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView MistnostiItemThymeleafController.update(@Valid @ModelAttribute Mistnost mistnost, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("mistnosti/edit");
        }
        // Concurrency control
        Mistnost existingMistnost = getMistnostService().findOne(mistnost.getId());
        if(mistnost.getVersion() != existingMistnost.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("mistnost", mistnost);
            model.addAttribute("concurrency", true);
            return new ModelAndView("mistnosti/edit");
        } else if(mistnost.getVersion() != existingMistnost.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("mistnost", existingMistnost);
            model.addAttribute("concurrency", false);
            return new ModelAndView("mistnosti/edit");
        } else if(mistnost.getVersion() != existingMistnost.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            mistnost.setVersion(existingMistnost.getVersion());
        }
        Mistnost savedMistnost = getMistnostService().save(mistnost);
        UriComponents showURI = getItemLink().to(MistnostiItemThymeleafLinkFactory.SHOW).with("mistnost", savedMistnost.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param mistnost
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> MistnostiItemThymeleafController.delete(@ModelAttribute Mistnost mistnost) {
        getMistnostService().delete(mistnost);
        return ResponseEntity.ok().build();
    }
    
}