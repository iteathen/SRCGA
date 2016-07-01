.class Ljavafx/scene/control/TableView$8;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "TableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/control/TableView$TableViewSelectionModel",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field oldValue:Ljavafx/scene/control/TableView$TableViewSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TableView$TableViewSelectionModel",
            "<TS;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/TableView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 967
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$8;, "Ljavafx/scene/control/TableView$8;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableView;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TableView$8;->this$0:Ljavafx/scene/control/TableView;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TableView$8;->oldValue:Ljavafx/scene/control/TableView$TableViewSelectionModel;

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 973
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$8;, "Ljavafx/scene/control/TableView$8;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$8;->oldValue:Ljavafx/scene/control/TableView$TableViewSelectionModel;

    if-eqz v1, :cond_0

    .line 974
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$8;->oldValue:Ljavafx/scene/control/TableView$TableViewSelectionModel;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->cellSelectionEnabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$8;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v2}, Ljavafx/scene/control/TableView;->access$1200(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 977
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$8;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TableView$TableViewSelectionModel;

    iput-object v2, v1, Ljavafx/scene/control/TableView$8;->oldValue:Ljavafx/scene/control/TableView$TableViewSelectionModel;

    .line 979
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$8;->oldValue:Ljavafx/scene/control/TableView$TableViewSelectionModel;

    if-eqz v1, :cond_1

    .line 980
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$8;->oldValue:Ljavafx/scene/control/TableView$TableViewSelectionModel;

    invoke-virtual {v1}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->cellSelectionEnabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$8;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v2}, Ljavafx/scene/control/TableView;->access$1200(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 982
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$8;->this$0:Ljavafx/scene/control/TableView;

    invoke-static {v1}, Ljavafx/scene/control/TableView;->access$1200(Ljavafx/scene/control/TableView;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$8;->oldValue:Ljavafx/scene/control/TableView$TableViewSelectionModel;

    invoke-virtual {v2}, Ljavafx/scene/control/TableView$TableViewSelectionModel;->cellSelectionEnabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/WeakInvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 984
    :cond_1
    return-void
.end method
