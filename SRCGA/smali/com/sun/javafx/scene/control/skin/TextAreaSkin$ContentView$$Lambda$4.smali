.class final synthetic Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

.field private final arg$2:Z

.field private final arg$3:Z


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;ZZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;->arg$1:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;->arg$2:Z

    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;->arg$3:Z

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;ZZ)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;ZZ)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;ZZ)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;ZZ)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;->arg$1:Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;->arg$2:Z

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;->arg$3:Z

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->access$lambda$3(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;ZZ)V

    return-void
.end method
