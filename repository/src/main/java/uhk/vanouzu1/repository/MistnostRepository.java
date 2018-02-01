package uhk.vanouzu1.repository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import uhk.vanouzu1.model.Mistnost;
import uhk.vanouzu1.model.MistnostInfo;

/**
 * = MistnostRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Mistnost.class, defaultReturnType = MistnostInfo.class)
public interface MistnostRepository {
}
