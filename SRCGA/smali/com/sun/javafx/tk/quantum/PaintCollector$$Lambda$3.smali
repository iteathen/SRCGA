.class final synthetic Lcom/sun/javafx/tk/quantum/PaintCollector$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Lcom/sun/javafx/tk/quantum/PaintCollector$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/javafx/tk/quantum/PaintCollector$$Lambda$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/PaintCollector$$Lambda$3;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/PaintCollector$$Lambda$3;->instance:Lcom/sun/javafx/tk/quantum/PaintCollector$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/sun/javafx/tk/quantum/PaintCollector$$Lambda$3;->instance:Lcom/sun/javafx/tk/quantum/PaintCollector$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/tk/quantum/GlassScene;

    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/tk/quantum/GlassScene;

    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/PaintCollector;->access$lambda$2(Lcom/sun/javafx/tk/quantum/GlassScene;Lcom/sun/javafx/tk/quantum/GlassScene;)I

    move-result v3

    move v0, v3

    return v0
.end method
