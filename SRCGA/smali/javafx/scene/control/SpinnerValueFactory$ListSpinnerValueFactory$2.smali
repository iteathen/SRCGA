.class Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->itemsProperty()Ljavafx/beans/property/ObjectProperty;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field oldItemsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;


# direct methods
.method constructor <init>(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;

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
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;, "Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;->oldItemsRef:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object v1, v3

    .line 329
    .local v1, "oldItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;

    invoke-virtual {v3}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v2, v3

    .line 332
    .local v2, "newItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 333
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;

    invoke-static {v4}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->access$000(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 335
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 336
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;

    invoke-static {v4}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->access$000(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 340
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;

    invoke-static {v3}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->access$100(Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;)V

    .line 342
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;->this$0:Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;->oldItemsRef:Ljava/lang/ref/WeakReference;

    .line 343
    return-void

    .line 328
    .end local v1    # "oldItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    .end local v2    # "newItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory$2;->oldItemsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableList;

    goto :goto_0
.end method
