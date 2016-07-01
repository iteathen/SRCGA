.class final Ljavafx/scene/control/TableView$3;
.super Ljava/lang/Object;
.source "TableView.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/scene/control/TableView;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$3;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljavafx/scene/control/TableView;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$3;
    move-object v1, p1

    .local v1, "table":Ljavafx/scene/control/TableView;
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Ljavafx/scene/control/TableView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v2, v6

    .line 436
    .local v2, "itemsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<*>;"
    move-object v6, v2

    instance-of v6, v6, Ljavafx/collections/transformation/SortedList;

    if-eqz v6, :cond_1

    .line 443
    move-object v6, v2

    check-cast v6, Ljavafx/collections/transformation/SortedList;

    move-object v3, v6

    .line 444
    .local v3, "sortedList":Ljavafx/collections/transformation/SortedList;
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/collections/transformation/SortedList;->comparatorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    move-object v7, v1

    .line 445
    invoke-virtual {v7}, Ljavafx/scene/control/TableView;->comparatorProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ObjectProperty;->isEqualTo(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/beans/binding/BooleanBinding;->get()Z

    move-result v6

    move v4, v6

    .line 447
    .local v4, "comparatorsBound":Z
    move v6, v4

    if-nez v6, :cond_0

    .line 450
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    invoke-virtual {v6}, Lsun/util/logging/PlatformLogger;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 451
    const-string v6, "TableView items list is a SortedList, but the SortedList comparator should be bound to the TableView comparator for sorting to be enabled (e.g. sortedList.comparatorProperty().bind(tableView.comparatorProperty());)."

    move-object v5, v6

    .line 455
    .local v5, "s":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 458
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    move v6, v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v6

    .line 485
    .end local v0    # "this":Ljavafx/scene/control/TableView$3;
    .end local v2    # "itemsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<*>;"
    .end local v3    # "sortedList":Ljavafx/collections/transformation/SortedList;
    .end local v4    # "comparatorsBound":Z
    :goto_0
    return-object v0

    .line 460
    .restart local v0    # "this":Ljavafx/scene/control/TableView$3;
    .restart local v2    # "itemsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<*>;"
    :cond_1
    move-object v6, v2

    if-eqz v6, :cond_2

    move-object v6, v2

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 462
    :cond_2
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 465
    :cond_3
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TableView;->getComparator()Ljava/util/Comparator;

    move-result-object v6

    move-object v3, v6

    .line 466
    .local v3, "comparator":Ljava/util/Comparator;
    move-object v6, v3

    if-nez v6, :cond_4

    .line 467
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 472
    :cond_4
    move-object v6, v2

    move-object v7, v3

    invoke-static {v6, v7}, Ljavafx/collections/FXCollections;->sort(Ljavafx/collections/ObservableList;Ljava/util/Comparator;)V

    .line 473
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 475
    .end local v2    # "itemsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<*>;"
    .end local v3    # "comparator":Ljava/util/Comparator;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 485
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$3;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/TableView;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$3;->call(Ljavafx/scene/control/TableView;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableView$3;
    return-object v0
.end method
