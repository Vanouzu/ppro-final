package uhk.vanouzu1.application.web;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;
import uhk.vanouzu1.model.Mistnost;
import uhk.vanouzu1.service.api.MistnostService;

/**
 * = MistnostDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Mistnost.class)
public class MistnostDeserializer extends JsonObjectDeserializer<Mistnost> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private MistnostService mistnostService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param mistnostService
     * @param conversionService
     */
    @Autowired
    public MistnostDeserializer(@Lazy MistnostService mistnostService, ConversionService conversionService) {
        this.mistnostService = mistnostService;
        this.conversionService = conversionService;
    }
}
