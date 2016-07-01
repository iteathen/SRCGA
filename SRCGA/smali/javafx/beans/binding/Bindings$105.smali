.class final Ljavafx/beans/binding/Bindings$105;
.super Ljavafx/beans/binding/IntegerBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->integerValueAt(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/IntegerBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljavafx/beans/value/ObservableValue;

.field final synthetic val$op:Ljavafx/collections/ObservableMap;


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)V
    .locals 9

    .prologue
    .line 7869
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$105;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$105;->val$op:Ljavafx/collections/ObservableMap;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$105;->val$key:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/IntegerBinding;-><init>()V

    .line 7871
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/Bindings$105;->val$op:Ljavafx/collections/ObservableMap;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/Bindings$105;->val$key:Ljavafx/beans/value/ObservableValue;

    aput-object v7, v5, v6

    invoke-super {v3, v4}, Ljavafx/beans/binding/IntegerBinding;->bind([Ljavafx/beans/Observable;)V

    .line 7872
    return-void
.end method


# virtual methods
.method protected computeValue()I
    .locals 7

    .prologue
    .line 7882
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$105;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/beans/binding/Bindings$105;->val$op:Ljavafx/collections/ObservableMap;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$105;->val$key:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    move-object v1, v2

    .line 7883
    .local v1, "value":Ljava/lang/Number;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 7884
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Element not found in map, returning default value instead."

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7894
    .line 7895
    .end local v1    # "value":Ljava/lang/Number;
    :goto_0
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$105;
    :goto_1
    return v0

    .line 7886
    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$105;
    .restart local v1    # "value":Ljava/lang/Number;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v0, v2

    goto :goto_1

    .line 7888
    .end local v1    # "value":Ljava/lang/Number;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 7889
    .local v1, "ex":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Exception while evaluating binding"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7894
    goto :goto_0

    .line 7891
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 7892
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
    .line 7876
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$105;
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$105;->val$op:Ljavafx/collections/ObservableMap;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$105;->val$key:Ljavafx/beans/value/ObservableValue;

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/IntegerBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 7877
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 7901
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$105;
    new-instance v1, Lcom/sun/javafx/collections/ImmutableObservableList;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/Bindings$105;->val$op:Ljavafx/collections/ObservableMap;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/Bindings$105;->val$key:Ljavafx/beans/value/ObservableValue;

    aput-object v6, v4, v5

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ImmutableObservableList;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$105;
    return-object v0
.end method
