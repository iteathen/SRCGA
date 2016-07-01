.class final synthetic Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

.field private final arg$2:Ljavafx/scene/input/KeyCombination;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/KeyCombination;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$16;->arg$1:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$16;->arg$2:Ljavafx/scene/input/KeyCombination;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/KeyCombination;)Ljava/util/function/Consumer;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$16;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$16;-><init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/KeyCombination;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/KeyCombination;)Ljava/util/function/Consumer;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$16;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$16;-><init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/KeyCombination;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$16;->arg$1:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$16;->arg$2:Ljavafx/scene/input/KeyCombination;

    move-object v4, v1

    check-cast v4, Ljavafx/scene/Scene;

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$lambda$15(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/KeyCombination;Ljavafx/scene/Scene;)V

    return-void
.end method
