.class Ljavafx/scene/Node$MiscProperties$5;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node$MiscProperties;->clipProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private oldClip:Ljavafx/scene/Node;

.field final synthetic this$1:Ljavafx/scene/Node$MiscProperties;


# direct methods
.method constructor <init>(Ljavafx/scene/Node$MiscProperties;Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 6564
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$5;
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/Node$MiscProperties;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6629
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6634
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$5;
    const-string v1, "clip"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties$5;
    return-object v0
.end method

.method protected invalidated()V
    .locals 8

    .prologue
    .line 6572
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties$5;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node$MiscProperties$5;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node;

    move-object v1, v3

    .line 6573
    .local v1, "newClip":Ljavafx/scene/Node;
    move-object v3, v1

    if-eqz v3, :cond_4

    move-object v3, v1

    .line 6574
    invoke-virtual {v3}, Ljavafx/scene/Node;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 6575
    invoke-static {v3}, Ljavafx/scene/Node;->access$3400(Ljavafx/scene/Node;)Ljavafx/scene/Node;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    if-ne v3, v4, :cond_1

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    move-object v5, v1

    .line 6576
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->wouldCreateCycle(Ljavafx/scene/Node;Ljavafx/scene/Node;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6581
    :cond_1
    move-object v3, v1

    .line 6582
    invoke-virtual {v3}, Ljavafx/scene/Node;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 6583
    invoke-static {v3}, Ljavafx/scene/Node;->access$3400(Ljavafx/scene/Node;)Ljavafx/scene/Node;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    if-eq v3, v4, :cond_2

    const-string v3, "node already connected"

    :goto_0
    move-object v2, v3

    .line 6587
    .local v2, "cause":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node$MiscProperties$5;->isBound()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6588
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node$MiscProperties$5;->unbind()V

    .line 6589
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$5;->oldClip:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/scene/Node$MiscProperties$5;->set(Ljava/lang/Object;)V

    .line 6590
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Node\'s clip set to incorrect value  through binding ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", node  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v6, v6, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    .line 6595
    invoke-static {v6}, Ljavafx/scene/Node$MiscProperties;->access$3500(Ljavafx/scene/Node$MiscProperties;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Binding has been removed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6583
    .end local v2    # "cause":Ljava/lang/String;
    :cond_2
    const-string v3, "cycle detected"

    goto :goto_0

    .line 6598
    .restart local v2    # "cause":Ljava/lang/String;
    :cond_3
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$5;->oldClip:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/scene/Node$MiscProperties$5;->set(Ljava/lang/Object;)V

    .line 6599
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Node\'s clip set to incorrect value ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", node  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v6, v6, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    .line 6603
    invoke-static {v6}, Ljavafx/scene/Node$MiscProperties;->access$3500(Ljavafx/scene/Node$MiscProperties;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6606
    .end local v2    # "cause":Ljava/lang/String;
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties$5;->oldClip:Ljavafx/scene/Node;

    if-eqz v3, :cond_5

    .line 6607
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties$5;->oldClip:Ljavafx/scene/Node;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/scene/Node;->access$3402(Ljavafx/scene/Node;Ljavafx/scene/Node;)Ljavafx/scene/Node;

    move-result-object v3

    .line 6608
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties$5;->oldClip:Ljavafx/scene/Node;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/scene/Node;->setScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V

    .line 6609
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties$5;->oldClip:Ljavafx/scene/Node;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/scene/Node;->access$600(Ljavafx/scene/Node;Z)V

    .line 6612
    :cond_5
    move-object v3, v1

    if-eqz v3, :cond_6

    .line 6613
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    invoke-static {v3, v4}, Ljavafx/scene/Node;->access$3402(Ljavafx/scene/Node;Ljavafx/scene/Node;)Ljavafx/scene/Node;

    move-result-object v3

    .line 6614
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v5, v5, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/scene/Node;->setScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V

    .line 6615
    move-object v3, v1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljavafx/scene/Node;->access$600(Ljavafx/scene/Node;Z)V

    .line 6618
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CLIP:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 6621
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties$5;->this$1:Ljavafx/scene/Node$MiscProperties;

    iget-object v3, v3, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->localBoundsChanged()V

    .line 6623
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Node$MiscProperties$5;->oldClip:Ljavafx/scene/Node;

    .line 6625
    return-void
.end method
