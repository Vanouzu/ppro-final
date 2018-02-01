package uhk.vanouzu1.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import uhk.vanouzu1.model.Mistnost;

/**
 * = MistnostRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = MistnostRepositoryCustom.class)
public class MistnostRepositoryImpl extends QueryDslRepositorySupportExt<Mistnost> {

    /**
     * TODO Auto-generated constructor documentation
     */
    MistnostRepositoryImpl() {
        super(Mistnost.class);
    }
}