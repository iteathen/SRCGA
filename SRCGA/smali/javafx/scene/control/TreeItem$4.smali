.class Ljavafx/scene/control/TreeItem$4;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "TreeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeItem;->expandedProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeItem;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeItem;)V
    .locals 4

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$4;, "Ljavafx/scene/control/TreeItem$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeItem;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeItem$4;->this$0:Ljavafx/scene/control/TreeItem;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$4;, "Ljavafx/scene/control/TreeItem$4;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$4;->this$0:Ljavafx/scene/control/TreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$4;, "Ljavafx/scene/control/TreeItem$4;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$4;, "Ljavafx/scene/control/TreeItem$4;"
    const-string v1, "expanded"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$4;, "Ljavafx/scene/control/TreeItem$4;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 9

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$4;, "Ljavafx/scene/control/TreeItem$4;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeItem$4;->this$0:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    :goto_0
    return-void

    .line 542
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeItem$4;->this$0:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    # getter for: Ljavafx/scene/control/TreeItem;->BRANCH_EXPANDED_EVENT:Ljavafx/event/EventType;
    invoke-static {}, Ljavafx/scene/control/TreeItem;->access$400()Ljavafx/event/EventType;

    move-result-object v2

    :goto_1
    move-object v1, v2

    .line 545
    .local v1, "evtType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeItem$4;->this$0:Ljavafx/scene/control/TreeItem;

    new-instance v3, Ljavafx/scene/control/TreeItem$TreeModificationEvent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeItem$4;->this$0:Ljavafx/scene/control/TreeItem;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeItem$4;->this$0:Ljavafx/scene/control/TreeItem;

    invoke-virtual {v7}, Ljavafx/scene/control/TreeItem;->isExpanded()Z

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Z)V

    invoke-static {v2, v3}, Ljavafx/scene/control/TreeItem;->access$200(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    .line 546
    goto :goto_0

    .line 543
    .end local v1    # "evtType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    :cond_1
    # getter for: Ljavafx/scene/control/TreeItem;->BRANCH_COLLAPSED_EVENT:Ljavafx/event/EventType;
    invoke-static {}, Ljavafx/scene/control/TreeItem;->access$500()Ljavafx/event/EventType;

    move-result-object v2

    goto :goto_1
.end method
