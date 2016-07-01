.class Ljavafx/scene/Node$12;
.super Ljavafx/scene/Node$LazyBoundsProperty;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 3220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$12;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$12;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/Node$LazyBoundsProperty;-><init>(Ljavafx/scene/Node$1;)V

    return-void
.end method


# virtual methods
.method protected computeBounds()Ljavafx/geometry/Bounds;
    .locals 2

    .prologue
    .line 3223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$12;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$12;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_computeLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$12;
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$12;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$12;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$12;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$12;
    const-string v1, "layoutBounds"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$12;
    return-object v0
.end method
