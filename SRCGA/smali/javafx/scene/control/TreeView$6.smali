.class Ljavafx/scene/control/TreeView$6;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "TreeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeView;->onEditCancelProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/event/EventHandler",
        "<",
        "Ljavafx/scene/control/TreeView$EditEvent",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$6;, "Ljavafx/scene/control/TreeView$6;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeView;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeView$6;->this$0:Ljavafx/scene/control/TreeView;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$6;, "Ljavafx/scene/control/TreeView$6;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$6;->this$0:Ljavafx/scene/control/TreeView;

    invoke-static {}, Ljavafx/scene/control/TreeView;->editCancelEvent()Ljavafx/event/EventType;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView$6;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/TreeView;->access$800(Ljavafx/scene/control/TreeView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 846
    return-void
.end method
