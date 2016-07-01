.class Ljavafx/scene/control/TableView$6;
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
        "Ljavafx/collections/ObservableList",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field oldItemsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/TableView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 823
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$6;, "Ljavafx/scene/control/TableView$6;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableView;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TableView$6;->this$0:Ljavafx/scene/control/TableView;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 8

    .prologue
    .line 827
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$6;, "Ljavafx/scene/control/TableView$6;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableView$6;->oldItemsRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v1, v3

    .line 828
    .local v1, "oldItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableView$6;->this$0:Ljavafx/scene/control/TableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v2, v3

    .line 831
    .local v2, "newItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 832
    .line 841
    :goto_1
    return-void

    .line 827
    .end local v1    # "oldItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    .end local v2    # "newItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableView$6;->oldItemsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    goto :goto_0

    .line 836
    .restart local v1    # "oldItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    .restart local v2    # "newItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TS;>;"
    :cond_1
    move-object v3, v2

    instance-of v3, v3, Ljavafx/collections/transformation/SortedList;

    if-nez v3, :cond_2

    .line 837
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TableView$6;->this$0:Ljavafx/scene/control/TableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 840
    :cond_2
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/TableView$6;->oldItemsRef:Ljava/lang/ref/WeakReference;

    .line 841
    goto :goto_1
.end method
