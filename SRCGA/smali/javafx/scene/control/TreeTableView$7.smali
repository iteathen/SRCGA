.class Ljavafx/scene/control/TreeTableView$7;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeTableView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field oldValue:Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel",
            "<TS;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/TreeTableView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1018
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$7;, "Ljavafx/scene/control/TreeTableView$7;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeTableView$7;->this$0:Ljavafx/scene/control/TreeTableView;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TreeTableView$7;->oldValue:Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 1025
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$7;, "Ljavafx/scene/control/TreeTableView$7;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$7;->oldValue:Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    if-eqz v1, :cond_0

    .line 1026
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$7;->oldValue:Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->cellSelectionEnabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$7;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v2}, Ljavafx/scene/control/TreeTableView;->access$1400(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 1029
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$7;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView$7;->oldValue:Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    .line 1031
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$7;->oldValue:Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    if-eqz v1, :cond_1

    .line 1032
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$7;->oldValue:Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->cellSelectionEnabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$7;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v2}, Ljavafx/scene/control/TreeTableView;->access$1400(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 1034
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$7;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v1}, Ljavafx/scene/control/TreeTableView;->access$1400(Ljavafx/scene/control/TreeTableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$7;->oldValue:Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->cellSelectionEnabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/WeakInvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 1036
    :cond_1
    return-void
.end method
