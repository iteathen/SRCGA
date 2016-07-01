.class final synthetic Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# instance fields
.field private final arg$1:Ljavafx/beans/InvalidationListener;


# direct methods
.method private constructor <init>(Ljavafx/beans/InvalidationListener;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$3;->arg$1:Ljavafx/beans/InvalidationListener;

    return-void
.end method

.method private static get$Lambda(Ljavafx/beans/InvalidationListener;)Ljavafx/collections/ListChangeListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$3;-><init>(Ljavafx/beans/InvalidationListener;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/beans/InvalidationListener;)Ljavafx/collections/ListChangeListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$3;-><init>(Ljavafx/beans/InvalidationListener;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$3;->arg$1:Ljavafx/beans/InvalidationListener;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->access$lambda$2(Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method
