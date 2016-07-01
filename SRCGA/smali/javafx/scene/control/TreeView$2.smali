.class Ljavafx/scene/control/TreeView$2;
.super Ljavafx/beans/property/SimpleBooleanProperty;
.source "TreeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeView;->showRootProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeView;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$2;, "Ljavafx/scene/control/TreeView$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeView;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move v4, p4

    .local v4, "x2":Z
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/TreeView$2;->this$0:Ljavafx/scene/control/TreeView;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$2;, "Ljavafx/scene/control/TreeView$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$2;->this$0:Ljavafx/scene/control/TreeView;

    invoke-static {v1}, Ljavafx/scene/control/TreeView;->access$300(Ljavafx/scene/control/TreeView;)V

    .line 520
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeView$2;->this$0:Ljavafx/scene/control/TreeView;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeView$2;->this$0:Ljavafx/scene/control/TreeView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v2

    invoke-static {v1, v2}, Ljavafx/scene/control/TreeView;->access$400(Ljavafx/scene/control/TreeView;Ljavafx/scene/control/TreeItem;)V

    .line 521
    return-void
.end method
