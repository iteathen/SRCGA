.class final synthetic Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# instance fields
.field private final arg$1:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$2;->arg$1:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/beans/InvalidationListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$2;-><init>(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)Ljavafx/beans/InvalidationListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$2;-><init>(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin$$Lambda$2;->arg$1:Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;->access$lambda$1(Lcom/sun/javafx/scene/control/skin/ComboBoxListViewSkin;Ljavafx/beans/Observable;)V

    return-void
.end method
