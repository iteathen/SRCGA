.class final synthetic Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/sun/javafx/scene/control/skin/TableViewSkin;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$8;->arg$1:Lcom/sun/javafx/scene/control/skin/TableViewSkin;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljava/lang/Runnable;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$8;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$8;-><init>(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)Ljava/lang/Runnable;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$8;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$8;-><init>(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TableViewSkin$$Lambda$8;->arg$1:Lcom/sun/javafx/scene/control/skin/TableViewSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/TableViewSkin;->access$lambda$7(Lcom/sun/javafx/scene/control/skin/TableViewSkin;)V

    return-void
.end method
