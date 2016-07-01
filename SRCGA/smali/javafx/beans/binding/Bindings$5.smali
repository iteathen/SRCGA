.class final Ljavafx/beans/binding/Bindings$5;
.super Ljavafx/beans/binding/LongBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->createLongBinding(Ljava/util/concurrent/Callable;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/LongBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dependencies:[Ljavafx/beans/Observable;

.field final synthetic val$func:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>([Ljavafx/beans/Observable;Ljava/util/concurrent/Callable;)V
    .locals 5

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$5;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$5;->val$dependencies:[Ljavafx/beans/Observable;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$5;->val$func:Ljava/util/concurrent/Callable;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/LongBinding;-><init>()V

    .line 291
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/Bindings$5;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-virtual {v3, v4}, Ljavafx/beans/binding/Bindings$5;->bind([Ljavafx/beans/Observable;)V

    .line 292
    return-void
.end method


# virtual methods
.method protected computeValue()J
    .locals 5

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$5;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/beans/binding/Bindings$5;->val$func:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .line 300
    .end local v0    # "this":Ljavafx/beans/binding/Bindings$5;
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    return-wide v0

    .line 298
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$5;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 299
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Exception while evaluating binding"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$5;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$5;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-super {v1, v2}, Ljavafx/beans/binding/LongBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 307
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$5;->val$dependencies:[Ljavafx/beans/Observable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$5;->val$dependencies:[Ljavafx/beans/Observable;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 313
    :cond_0
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v1

    .line 315
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$5;
    return-object v0

    .line 313
    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$5;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$5;->val$dependencies:[Ljavafx/beans/Observable;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$5;->val$dependencies:[Ljavafx/beans/Observable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 315
    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sun/javafx/collections/ImmutableObservableList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$5;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ImmutableObservableList;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method
