.class final synthetic Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# instance fields
.field private final arg$1:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

.field private final arg$2:Ljavafx/scene/control/TextArea;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$3;->arg$1:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$3;->arg$2:Ljavafx/scene/control/TextArea;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)Ljavafx/beans/InvalidationListener;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$3;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)Ljavafx/beans/InvalidationListener;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$3;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$3;->arg$1:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$$Lambda$3;->arg$2:Ljavafx/scene/control/TextArea;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$lambda$2(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Ljavafx/scene/control/TextArea;Ljavafx/beans/Observable;)V

    return-void
.end method
