.class final Ljavafx/beans/binding/Bindings$102;
.super Ljavafx/beans/binding/FloatBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->floatValueAt(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)Ljavafx/beans/binding/FloatBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$op:Ljavafx/collections/ObservableMap;


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 7707
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$102;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$102;->val$op:Ljavafx/collections/ObservableMap;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$102;->val$key:Ljava/lang/Object;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/FloatBinding;-><init>()V

    .line 7709
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/Bindings$102;->val$op:Ljavafx/collections/ObservableMap;

    aput-object v7, v5, v6

    invoke-super {v3, v4}, Ljavafx/beans/binding/FloatBinding;->bind([Ljavafx/beans/Observable;)V

    .line 7710
    return-void
.end method


# virtual methods
.method protected computeValue()F
    .locals 7

    .prologue
    .line 7720
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$102;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/beans/binding/Bindings$102;->val$op:Ljavafx/collections/ObservableMap;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$102;->val$key:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    move-object v1, v2

    .line 7721
    .local v1, "value":Ljava/lang/Number;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 7722
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Element not found in map, returning default value instead."

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7732
    .line 7733
    .end local v1    # "value":Ljava/lang/Number;
    :goto_0
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$102;
    :goto_1
    return v0

    .line 7724
    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$102;
    .restart local v1    # "value":Ljava/lang/Number;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v0, v2

    goto :goto_1

    .line 7726
    .end local v1    # "value":Ljava/lang/Number;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 7727
    .local v1, "ex":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Exception while evaluating binding"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7732
    goto :goto_0

    .line 7729
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 7730
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Exception while evaluating binding"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 7714
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$102;
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$102;->val$op:Ljavafx/collections/ObservableMap;

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/FloatBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 7715
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 7739
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$102;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$102;->val$op:Ljavafx/collections/ObservableMap;

    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$102;
    return-object v0
.end method
