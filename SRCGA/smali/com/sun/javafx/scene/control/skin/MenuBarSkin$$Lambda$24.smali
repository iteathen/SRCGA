.class final synthetic Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventHandler;


# instance fields
.field private final arg$1:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

.field private final arg$2:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

.field private final arg$3:Ljavafx/scene/control/Menu;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;->arg$1:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;->arg$2:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;->arg$3:Ljavafx/scene/control/Menu;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)Ljavafx/event/EventHandler;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;-><init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)Ljavafx/event/EventHandler;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;-><init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)V

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

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;->arg$1:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;->arg$2:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;->arg$3:Ljavafx/scene/control/Menu;

    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/MouseEvent;

    invoke-static {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$lambda$23(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method
