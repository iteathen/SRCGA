.class final synthetic Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field private static final instance:Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$2;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$2;->instance:Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/function/Function;
    .locals 1

    sget-object v0, Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$2;->instance:Lcom/sun/javafx/scene/traversal/Hueristic2D$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    check-cast v2, Ljavafx/geometry/Bounds;

    invoke-static {v2}, Lcom/sun/javafx/scene/traversal/Hueristic2D;->access$lambda$1(Ljavafx/geometry/Bounds;)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
