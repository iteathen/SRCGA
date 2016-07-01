.class Ljavafx/scene/control/TreeTableView$11;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeTableView;->onSortProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/control/SortEvent",
        "<",
        "Ljavafx/scene/control/TreeTableView",
        "<TS;>;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView;)V
    .locals 4

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$11;, "Ljavafx/scene/control/TreeTableView$11;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$11;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$11;, "Ljavafx/scene/control/TreeTableView$11;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$11;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$11;, "Ljavafx/scene/control/TreeTableView$11;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1447
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$11;, "Ljavafx/scene/control/TreeTableView$11;"
    const-string v1, "onSort"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$11;, "Ljavafx/scene/control/TreeTableView$11;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 1437
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$11;, "Ljavafx/scene/control/TreeTableView$11;"
    invoke-static {}, Ljavafx/scene/control/SortEvent;->sortEvent()Ljavafx/event/EventType;

    move-result-object v3

    move-object v1, v3

    .line 1438
    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/control/SortEvent<Ljavafx/scene/control/TreeTableView<TS;>;>;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$11;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    move-object v2, v3

    .line 1439
    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/control/SortEvent<Ljavafx/scene/control/TreeTableView<TS;>;>;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$11;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/TreeTableView;->access$1700(Ljavafx/scene/control/TreeTableView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1440
    return-void
.end method
