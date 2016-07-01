.class Ljavafx/scene/control/TreeTableView$12;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeTableView;->onScrollToProperty()Ljavafx/beans/property/ObjectProperty;
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
        "Ljavafx/scene/control/ScrollToEvent",
        "<",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView;)V
    .locals 4

    .prologue
    .line 1501
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$12;, "Ljavafx/scene/control/TreeTableView$12;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$12;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1507
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$12;, "Ljavafx/scene/control/TreeTableView$12;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$12;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$12;, "Ljavafx/scene/control/TreeTableView$12;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1511
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$12;, "Ljavafx/scene/control/TreeTableView$12;"
    const-string v1, "onScrollTo"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$12;, "Ljavafx/scene/control/TreeTableView$12;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 1503
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$12;, "Ljavafx/scene/control/TreeTableView$12;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$12;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {}, Ljavafx/scene/control/ScrollToEvent;->scrollToTopIndex()Ljavafx/event/EventType;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$12;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/TreeTableView;->access$1800(Ljavafx/scene/control/TreeTableView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1504
    return-void
.end method
