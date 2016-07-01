.class Ljavafx/scene/control/Slider$3;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Slider;->valueProperty()Ljavafx/beans/property/DoubleProperty;
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
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Slider;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/Slider$3;->this$0:Ljavafx/scene/control/Slider;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider$3;->this$0:Ljavafx/scene/control/Slider;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$3;
    const-string v1, "value"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider$3;->this$0:Ljavafx/scene/control/Slider;

    invoke-static {v1}, Ljavafx/scene/control/Slider;->access$000(Ljavafx/scene/control/Slider;)V

    .line 225
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider$3;->this$0:Ljavafx/scene/control/Slider;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->VALUE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Slider;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 226
    return-void
.end method
