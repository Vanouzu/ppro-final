package uhk.vanouzu1.model;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.roo.addon.dto.annotations.RooEntityProjection;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;

/**
 * = MistnostInfo
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean(settersByDefault = false)
@RooToString
@RooEquals
@RooEntityProjection(entity = Mistnost.class, fields = { "id", "nazev", "kapacita", "avg_obsazenost" }, formatExpression = "#{nazev}")
public class MistnostInfo {

    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String nazev;

    @NumberFormat
    private int kapacita;

    @NumberFormat
    private int avg_obsazenost;
}
