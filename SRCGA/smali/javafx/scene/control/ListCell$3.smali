.class Ljavafx/scene/control/ListCell$3;
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
        "Ljavafx/scene/control/FocusModel",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ListCell;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ListCell;)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell$3;, "Ljavafx/scene/control/ListCell$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ListCell;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListCell$3;->this$0:Ljavafx/scene/control/ListCell;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell$3;, "Ljavafx/scene/control/ListCell$3;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljavafx/scene/control/FocusModel;

    move-object v7, v3

    check-cast v7, Ljavafx/scene/control/FocusModel;

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/control/ListCell$3;->changed(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/FocusModel;Ljavafx/scene/control/FocusModel;)V

    return-void
.end method

.method public changed(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/control/FocusModel;Ljavafx/scene/control/FocusModel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljavafx/scene/control/FocusModel",
            "<TT;>;>;",
            "Ljavafx/scene/control/FocusModel",
            "<TT;>;",
            "Ljavafx/scene/control/FocusModel",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell$3;, "Ljavafx/scene/control/ListCell$3;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljavafx/scene/control/FocusModel<TT;>;>;"
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 206
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->focusedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListCell$3;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v5}, Ljavafx/scene/control/ListCell;->access$400(Ljavafx/scene/control/ListCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 208
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 209
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->focusedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ListCell$3;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v5}, Ljavafx/scene/control/ListCell;->access$400(Ljavafx/scene/control/ListCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 211
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ListCell$3;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v4}, Ljavafx/scene/control/ListCell;->access$500(Ljavafx/scene/control/ListCell;)V

    .line 212
    return-void
.end method
