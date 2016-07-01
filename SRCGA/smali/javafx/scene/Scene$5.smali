.class Ljavafx/scene/Scene$5;
.super Ljavafx/beans/property/ReadOnlyDoubleWrapper;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Scene;->widthPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 830
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$5;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 848
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$5;->this$0:Ljavafx/scene/Scene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 853
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$5;
    const-string v1, "width"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$5;
    return-object v0
.end method

.method protected invalidated()V
    .locals 8

    .prologue
    .line 834
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene$5;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene$5;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v2, v3

    .line 836
    .local v2, "_root":Ljavafx/scene/Parent;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_0

    .line 837
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->impl_transformsChanged()V

    .line 839
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->isResizable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 840
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene$5;->this$0:Ljavafx/scene/Scene;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Scene$5;->get()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getLayoutX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getTranslateX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/Scene;->resizeRootOnSceneSizeChange(DD)V

    .line 843
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene$5;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Scene$5;->get()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Camera;->setViewWidth(D)V

    .line 844
    return-void
.end method
