package uhk.vanouzu1.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QMistnost is a Querydsl query type for Mistnost
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QMistnost extends EntityPathBase<Mistnost> {

    private static final long serialVersionUID = 549286031L;

    public static final QMistnost mistnost = new QMistnost("mistnost");

    public final NumberPath<Integer> avg_obsazenost = createNumber("avg_obsazenost", Integer.class);

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final NumberPath<Integer> kapacita = createNumber("kapacita", Integer.class);

    public final StringPath nazev = createString("nazev");

    public final NumberPath<Integer> version = createNumber("version", Integer.class);

    public QMistnost(String variable) {
        super(Mistnost.class, forVariable(variable));
    }

    public QMistnost(Path<? extends Mistnost> path) {
        super(path.getType(), path.getMetadata());
    }

    public QMistnost(PathMetadata metadata) {
        super(Mistnost.class, metadata);
    }

}

