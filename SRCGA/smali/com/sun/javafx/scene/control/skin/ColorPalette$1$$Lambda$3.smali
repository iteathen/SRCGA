.class final synthetic Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljavafx/scene/control/ColorPicker;


# direct methods
.method private constructor <init>(Ljavafx/scene/control/ColorPicker;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$3;->arg$1:Ljavafx/scene/control/ColorPicker;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/control/ColorPicker;)Ljava/lang/Runnable;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$3;-><init>(Ljavafx/scene/control/ColorPicker;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/control/ColorPicker;)Ljava/lang/Runnable;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$3;-><init>(Ljavafx/scene/control/ColorPicker;)V

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

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$3;->arg$1:Ljavafx/scene/control/ColorPicker;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->access$lambda$2(Ljavafx/scene/control/ColorPicker;)V

    return-void
.end method
