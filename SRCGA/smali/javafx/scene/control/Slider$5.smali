.class Ljavafx/scene/control/Slider$5;
.super Ljavafx/css/StyleableBooleanProperty;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Slider;->showTickLabelsProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Slider;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Slider;Z)V
    .locals 5

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Slider;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Slider$5;->this$0:Ljavafx/scene/control/Slider;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider$5;->this$0:Ljavafx/scene/control/Slider;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$5;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Slider;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$5;
    # getter for: Ljavafx/scene/control/Slider$StyleableProperties;->SHOW_TICK_LABELS:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Slider$StyleableProperties;->access$400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$5;
    const-string v1, "showTickLabels"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$5;
    return-object v0
.end method
