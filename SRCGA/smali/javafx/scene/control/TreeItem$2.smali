.class Ljavafx/scene/control/TreeItem$2;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "TreeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeItem;->valueProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeItem;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeItem;)V
    .locals 4

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$2;, "Ljavafx/scene/control/TreeItem$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeItem;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeItem$2;->this$0:Ljavafx/scene/control/TreeItem;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$2;, "Ljavafx/scene/control/TreeItem$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$2;->this$0:Ljavafx/scene/control/TreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$2;, "Ljavafx/scene/control/TreeItem$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$2;, "Ljavafx/scene/control/TreeItem$2;"
    const-string v1, "value"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$2;, "Ljavafx/scene/control/TreeItem$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 8

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$2;, "Ljavafx/scene/control/TreeItem$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$2;->this$0:Ljavafx/scene/control/TreeItem;

    new-instance v2, Ljavafx/scene/control/TreeItem$TreeModificationEvent;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    # getter for: Ljavafx/scene/control/TreeItem;->VALUE_CHANGED_EVENT:Ljavafx/event/EventType;
    invoke-static {}, Ljavafx/scene/control/TreeItem;->access$100()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeItem$2;->this$0:Ljavafx/scene/control/TreeItem;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/TreeItem$2;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Ljavafx/scene/control/TreeItem;->access$200(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    .line 446
    return-void
.end method
