.class Ljavafx/scene/control/TreeItem$3;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "TreeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;
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
.field final synthetic this$0:Ljavafx/scene/control/TreeItem;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeItem;)V
    .locals 4

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$3;, "Ljavafx/scene/control/TreeItem$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeItem;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeItem$3;->this$0:Ljavafx/scene/control/TreeItem;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$3;, "Ljavafx/scene/control/TreeItem$3;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$3;->this$0:Ljavafx/scene/control/TreeItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$3;, "Ljavafx/scene/control/TreeItem$3;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$3;, "Ljavafx/scene/control/TreeItem$3;"
    const-string v1, "graphic"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeItem$3;, "Ljavafx/scene/control/TreeItem$3;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 7

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeItem$3;, "Ljavafx/scene/control/TreeItem$3;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeItem$3;->this$0:Ljavafx/scene/control/TreeItem;

    new-instance v2, Ljavafx/scene/control/TreeItem$TreeModificationEvent;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    # getter for: Ljavafx/scene/control/TreeItem;->GRAPHIC_CHANGED_EVENT:Ljavafx/event/EventType;
    invoke-static {}, Ljavafx/scene/control/TreeItem;->access$300()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeItem$3;->this$0:Ljavafx/scene/control/TreeItem;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TreeItem$TreeModificationEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/control/TreeItem;)V

    invoke-static {v1, v2}, Ljavafx/scene/control/TreeItem;->access$200(Ljavafx/scene/control/TreeItem;Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V

    .line 489
    return-void
.end method
