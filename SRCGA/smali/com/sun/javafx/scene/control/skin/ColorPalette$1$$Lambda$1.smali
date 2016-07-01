.class final synthetic Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# instance fields
.field private final arg$1:Lcom/sun/javafx/scene/control/skin/ColorPalette$1;

.field private final arg$2:Ljavafx/scene/control/ColorPicker;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;Ljavafx/scene/control/ColorPicker;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$1;->arg$1:Lcom/sun/javafx/scene/control/skin/ColorPalette$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$1;->arg$2:Ljavafx/scene/control/ColorPicker;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;Ljavafx/scene/control/ColorPicker;)Ljavafx/beans/value/ChangeListener;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$1;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;Ljavafx/scene/control/ColorPicker;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;Ljavafx/scene/control/ColorPicker;)Ljavafx/beans/value/ChangeListener;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$1;-><init>(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;Ljavafx/scene/control/ColorPicker;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$1;->arg$1:Lcom/sun/javafx/scene/control/skin/ColorPalette$1;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ColorPalette$1$$Lambda$1;->arg$2:Ljavafx/scene/control/ColorPicker;

    move-object v6, v1

    move-object v7, v2

    check-cast v7, Ljavafx/scene/paint/Color;

    move-object v8, v3

    check-cast v8, Ljavafx/scene/paint/Color;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ColorPalette$1;->access$lambda$0(Lcom/sun/javafx/scene/control/skin/ColorPalette$1;Ljavafx/scene/control/ColorPicker;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V

    return-void
.end method
