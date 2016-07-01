.class final Ljavafx/beans/binding/Bindings$109;
.super Ljavafx/beans/binding/StringBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->stringValueAt(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringBinding;
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
    .line 8080
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$109;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$109;->val$op:Ljavafx/collections/ObservableMap;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$109;->val$key:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/StringBinding;-><init>()V

    .line 8082
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/Bindings$109;->val$op:Ljavafx/collections/ObservableMap;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/Bindings$109;->val$key:Ljavafx/beans/value/ObservableValue;

    aput-object v7, v5, v6

    invoke-super {v3, v4}, Ljavafx/beans/binding/StringBinding;->bind([Ljavafx/beans/Observable;)V

    .line 8083
    return-void
.end method


# virtual methods
.method protected computeValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 8093
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$109;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/beans/binding/Bindings$109;->val$op:Ljavafx/collections/ObservableMap;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$109;->val$key:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 8101
    .end local v0    # "this":Ljavafx/beans/binding/Bindings$109;
    :goto_0
    return-object v0

    .line 8094
    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$109;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 8095
    .local v1, "ex":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Exception while evaluating binding"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8100
    .line 8101
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :goto_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 8097
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 8098
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Exception while evaluating binding"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 8087
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$109;
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$109;->val$op:Ljavafx/collections/ObservableMap;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$109;->val$key:Ljavafx/beans/value/ObservableValue;

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/StringBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 8088
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
    .line 8107
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$109;
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

    iget-object v6, v6, Ljavafx/beans/binding/Bindings$109;->val$op:Ljavafx/collections/ObservableMap;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/Bindings$109;->val$key:Ljavafx/beans/value/ObservableValue;

    aput-object v6, v4, v5

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ImmutableObservableList;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$109;
    return-object v0
.end method
