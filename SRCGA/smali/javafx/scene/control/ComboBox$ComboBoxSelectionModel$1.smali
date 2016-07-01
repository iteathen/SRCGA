.class Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;
.super Ljava/lang/Object;
.source "ComboBox.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;-><init>(Ljavafx/scene/control/ComboBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

.field private weakItemsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)V
    .locals 7

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 505
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-static {v5}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->access$300(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)Ljavafx/scene/control/ComboBox;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;->weakItemsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;->weakItemsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    move-object v2, v3

    .line 509
    .local v2, "oldItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-static {v6}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->access$300(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)Ljavafx/scene/control/ComboBox;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;->weakItemsRef:Ljava/lang/ref/WeakReference;

    .line 510
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$1;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-static {v5}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->access$300(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)Ljavafx/scene/control/ComboBox;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->access$400(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    .line 511
    return-void
.end method
