.class Ljavafx/scene/control/PopupControl$3;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "PopupControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/PopupControl;->minWidthProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/PopupControl;


# direct methods
.method constructor <init>(Ljavafx/scene/control/PopupControl;D)V
    .locals 8

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/PopupControl;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/PopupControl$3;->this$0:Ljavafx/scene/control/PopupControl;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$3;->this$0:Ljavafx/scene/control/PopupControl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$3;
    const-string v1, "minWidth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$3;->this$0:Ljavafx/scene/control/PopupControl;

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$3;->this$0:Ljavafx/scene/control/PopupControl;

    iget-object v1, v1, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl$CSSBridge;->requestLayout()V

    .line 422
    :cond_0
    return-void
.end method
