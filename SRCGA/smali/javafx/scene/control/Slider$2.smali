.class Ljavafx/scene/control/Slider$2;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Slider;->minProperty()Ljavafx/beans/property/DoubleProperty;
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
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Slider;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/Slider$2;->this$0:Ljavafx/scene/control/Slider;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider$2;->this$0:Ljavafx/scene/control/Slider;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$2;
    const-string v1, "min"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 184
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider$2;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/Slider$2;->get()D

    move-result-wide v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/control/Slider$2;->this$0:Ljavafx/scene/control/Slider;

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 185
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider$2;->this$0:Ljavafx/scene/control/Slider;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Slider$2;->get()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Slider;->setMax(D)V

    .line 187
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider$2;->this$0:Ljavafx/scene/control/Slider;

    invoke-static {v2}, Ljavafx/scene/control/Slider;->access$000(Ljavafx/scene/control/Slider;)V

    .line 188
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider$2;->this$0:Ljavafx/scene/control/Slider;

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->MIN_VALUE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Slider;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 189
    return-void
.end method
