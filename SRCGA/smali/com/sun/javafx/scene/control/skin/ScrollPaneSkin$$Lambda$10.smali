.class final synthetic Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventDispatcher;


# instance fields
.field private final arg$1:Ljavafx/event/EventDispatcher;

.field private final arg$2:Ljavafx/event/EventDispatcher;


# direct methods
.method private constructor <init>(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$10;->arg$1:Ljavafx/event/EventDispatcher;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$10;->arg$2:Ljavafx/event/EventDispatcher;

    return-void
.end method

.method private static get$Lambda(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatcher;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$10;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$10;-><init>(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatcher;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$10;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$10;-><init>(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$10;->arg$1:Ljavafx/event/EventDispatcher;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$$Lambda$10;->arg$2:Ljavafx/event/EventDispatcher;

    move-object v5, v1

    move-object v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$lambda$9(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
