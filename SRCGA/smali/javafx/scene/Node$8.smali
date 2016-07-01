.class Ljavafx/scene/Node$8;
.super Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Node;->disabledPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
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
    .line 1655
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$8;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$8;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1666
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$8;->this$0:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$8;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1671
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$8;
    const-string v1, "disabled"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$8;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 1659
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$8;->this$0:Ljavafx/scene/Node;

    # getter for: Ljavafx/scene/Node;->DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/Node;->access$1200()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node$8;->get()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Node;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1660
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$8;->this$0:Ljavafx/scene/Node;

    invoke-static {v1}, Ljavafx/scene/Node;->access$1300(Ljavafx/scene/Node;)V

    .line 1661
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$8;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$8;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    invoke-static {v1, v2}, Ljavafx/scene/Node;->access$1400(Ljavafx/scene/Node;Ljavafx/scene/Scene;)V

    .line 1662
    return-void
.end method
