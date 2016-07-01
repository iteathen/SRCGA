.class final synthetic Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


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

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;->arg$1:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;->arg$2:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;->arg$3:Ljavafx/scene/control/Menu;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)Ljavafx/beans/value/ChangeListener;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;-><init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)Ljavafx/beans/value/ChangeListener;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;-><init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;->arg$1:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;->arg$2:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;->arg$3:Ljavafx/scene/control/Menu;

    move-object v7, v1

    move-object v8, v2

    check-cast v8, Ljava/lang/Boolean;

    move-object v9, v3

    check-cast v9, Ljava/lang/Boolean;

    invoke-static/range {v4 .. v9}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$lambda$20(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
