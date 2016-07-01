.class Ljavafx/scene/control/Slider$7;
.super Ljavafx/css/StyleableDoubleProperty;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Slider;->majorTickUnitProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Slider;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Slider;D)V
    .locals 8

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$7;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Slider;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/Slider$7;->this$0:Ljavafx/scene/control/Slider;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$7;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider$7;->this$0:Ljavafx/scene/control/Slider;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$7;
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
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$7;
    # getter for: Ljavafx/scene/control/Slider$StyleableProperties;->MAJOR_TICK_UNIT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Slider$StyleableProperties;->access$600()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$7;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$7;
    const-string v1, "majorTickUnit"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$7;
    return-object v0
.end method

.method public invalidated()V
    .locals 7

    .prologue
    .line 411
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider$7;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Slider$7;->get()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 412
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "MajorTickUnit cannot be less than or equal to 0."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    :cond_0
    return-void
.end method
