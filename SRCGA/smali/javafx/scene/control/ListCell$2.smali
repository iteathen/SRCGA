.class Ljavafx/scene/control/ListCell$2;
.super Ljava/lang/Object;
.source "ListCell.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ListCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljavafx/collections/ObservableList",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ListCell;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ListCell;)V
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell$2;, "Ljavafx/scene/control/ListCell$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ListCell;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListCell$2;->this$0:Ljavafx/scene/control/ListCell;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell$2;, "Ljavafx/scene/control/ListCell$2;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljavafx/collections/ObservableList;

    move-object v7, v3

    check-cast v7, Ljavafx/collections/ObservableList;

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/control/ListCell$2;->changed(Ljavafx/beans/value/ObservableValue;Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method public changed(Ljavafx/beans/value/ObservableValue;Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljavafx/collections/ObservableList",
            "<TT;>;>;",
            "Ljavafx/collections/ObservableList",
            "<TT;>;",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell$2;, "Ljavafx/scene/control/ListCell$2;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljavafx/collections/ObservableList<TT;>;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v3, p3

    .local v3, "newValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 180
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListCell$2;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v5}, Ljavafx/scene/control/ListCell;->access$200(Ljavafx/scene/control/ListCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 182
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 183
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListCell$2;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v5}, Ljavafx/scene/control/ListCell;->access$200(Ljavafx/scene/control/ListCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 185
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListCell$2;->this$0:Ljavafx/scene/control/ListCell;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljavafx/scene/control/ListCell;->access$300(Ljavafx/scene/control/ListCell;I)V

    .line 186
    return-void
.end method
