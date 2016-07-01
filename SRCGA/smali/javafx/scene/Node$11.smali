.class Ljavafx/scene/Node$11;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->layoutYProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;D)V
    .locals 8

    .prologue
    .line 2544
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$11;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/Node$11;->this$0:Ljavafx/scene/Node;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2564
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$11;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$11;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$11;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2569
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$11;
    const-string v1, "layoutY"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$11;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 2548
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$11;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$11;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_transformsChanged()V

    .line 2549
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$11;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 2550
    .local v1, "p":Ljavafx/scene/Parent;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Ljavafx/scene/Parent;->performingLayout:Z

    if-nez v2, :cond_0

    .line 2551
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$11;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->isManaged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2553
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->requestLayout()V

    .line 2560
    :cond_0
    :goto_0
    return-void

    .line 2556
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->clearSizeCache()V

    .line 2557
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->requestParentLayout()V

    goto :goto_0
.end method
