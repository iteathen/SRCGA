.class final synthetic Ljavafx/scene/Node$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/javafx/scene/BoundsAccessor;


# static fields
.field private static final instance:Ljavafx/scene/Node$$Lambda$5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavafx/scene/Node$$Lambda$5;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/Node$$Lambda$5;-><init>()V

    sput-object v0, Ljavafx/scene/Node$$Lambda$5;->instance:Ljavafx/scene/Node$$Lambda$5;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/sun/javafx/scene/BoundsAccessor;
    .locals 1

    sget-object v0, Ljavafx/scene/Node$$Lambda$5;->instance:Ljavafx/scene/Node$$Lambda$5;

    return-object v0
.end method


# virtual methods
.method public getGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Ljavafx/scene/Node;->access$lambda$4(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method
