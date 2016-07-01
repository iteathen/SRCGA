.class Ljavafx/scene/control/TreeTableView$13;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeTableView;->onScrollToColumnProperty()Ljavafx/beans/property/ObjectProperty;
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
        "Ljavafx/scene/control/TreeTableColumn",
        "<TS;*>;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView;)V
    .locals 4

    .prologue
    .line 1555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$13;, "Ljavafx/scene/control/TreeTableView$13;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$13;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1563
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$13;, "Ljavafx/scene/control/TreeTableView$13;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$13;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$13;, "Ljavafx/scene/control/TreeTableView$13;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1568
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$13;, "Ljavafx/scene/control/TreeTableView$13;"
    const-string v1, "onScrollToColumn"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$13;, "Ljavafx/scene/control/TreeTableView$13;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 1558
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$13;, "Ljavafx/scene/control/TreeTableView$13;"
    invoke-static {}, Ljavafx/scene/control/ScrollToEvent;->scrollToColumn()Ljavafx/event/EventType;

    move-result-object v2

    move-object v1, v2

    .line 1559
    .local v1, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/control/ScrollToEvent<Ljavafx/scene/control/TreeTableColumn<TS;*>;>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$13;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$13;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/event/EventHandler;

    invoke-static {v2, v3, v4}, Ljavafx/scene/control/TreeTableView;->access$1900(Ljavafx/scene/control/TreeTableView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1560
    return-void
.end method
