.class final Ljavafx/scene/Node$18;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 9340
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$18;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;
    .locals 3

    .prologue
    .line 9364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$18;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->getAccessible()Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Node$18;
    return-object v0
.end method

.method public getSubScene(Ljavafx/scene/Node;)Ljavafx/scene/SubScene;
    .locals 3

    .prologue
    .line 9354
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$18;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Node$18;
    return-object v0
.end method

.method public isDerivedDepthTest(Ljavafx/scene/Node;)Z
    .locals 3

    .prologue
    .line 9349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$18;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->isDerivedDepthTest()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/Node$18;
    return v0
.end method

.method public layoutNodeForPrinting(Ljavafx/scene/Node;)V
    .locals 3

    .prologue
    .line 9344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$18;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/Node;->access$6300(Ljavafx/scene/Node;)V

    .line 9345
    return-void
.end method

.method public setLabeledBy(Ljavafx/scene/Node;Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 9359
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$18;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "labeledBy":Ljavafx/scene/Node;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/scene/Node;->access$6402(Ljavafx/scene/Node;Ljavafx/scene/Node;)Ljavafx/scene/Node;

    move-result-object v3

    .line 9360
    return-void
.end method
