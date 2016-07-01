.class Ljavafx/scene/Node$10;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->layoutXProperty()Ljavafx/beans/property/DoubleProperty;
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
    .line 2472
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$10;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/Node$10;->this$0:Ljavafx/scene/Node;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2492
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$10;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$10;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$10;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$10;
    const-string v1, "layoutX"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$10;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 2476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$10;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$10;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_transformsChanged()V

    .line 2477
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$10;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 2478
    .local v1, "p":Ljavafx/scene/Parent;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Ljavafx/scene/Parent;->performingLayout:Z

    if-nez v2, :cond_0

    .line 2479
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$10;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->isManaged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2481
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->requestLayout()V

    .line 2488
    :cond_0
    :goto_0
    return-void

    .line 2484
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->clearSizeCache()V

    .line 2485
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->requestParentLayout()V

    goto :goto_0
.end method
