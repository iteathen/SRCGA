.class final synthetic Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventHandler;


# instance fields
.field private final arg$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

.field private final arg$2:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

.field private final arg$3:Ljavafx/scene/control/Tab;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;->arg$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;->arg$2:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;->arg$3:Ljavafx/scene/control/Tab;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;)Ljavafx/event/EventHandler;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;)Ljavafx/event/EventHandler;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;->arg$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;->arg$2:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$$Lambda$1;->arg$3:Ljavafx/scene/control/Tab;

    move-object v5, v1

    check-cast v5, Ljavafx/event/ActionEvent;

    invoke-static {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$lambda$0(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;Ljavafx/event/ActionEvent;)V

    return-void
.end method
