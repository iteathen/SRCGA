.class final synthetic Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventDispatcher;


# static fields
.field private static final instance:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$8;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$8;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$8;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$8;->instance:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$8;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljavafx/event/EventDispatcher;
    .locals 1

    sget-object v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$8;->instance:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$8;

    return-object v0
.end method


# virtual methods
.method public dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$lambda$7(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
