.class final Ljavafx/beans/binding/Bindings$91;
.super Ljavafx/beans/binding/IntegerBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->integerValueAt(Ljavafx/collections/ObservableIntegerArray;I)Ljavafx/beans/binding/IntegerBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$op:Ljavafx/collections/ObservableIntegerArray;


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableIntegerArray;I)V
    .locals 9

    .prologue
    .line 7162
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$91;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$91;->val$op:Ljavafx/collections/ObservableIntegerArray;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljavafx/beans/binding/Bindings$91;->val$index:I

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/IntegerBinding;-><init>()V

    .line 7164
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/Bindings$91;->val$op:Ljavafx/collections/ObservableIntegerArray;

    aput-object v7, v5, v6

    invoke-super {v3, v4}, Ljavafx/beans/binding/IntegerBinding;->bind([Ljavafx/beans/Observable;)V

    .line 7165
    return-void
.end method


# virtual methods
.method protected computeValue()I
    .locals 5

    .prologue
    .line 7175
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$91;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/beans/binding/Bindings$91;->val$op:Ljavafx/collections/ObservableIntegerArray;

    move-object v3, v0

    iget v3, v3, Ljavafx/beans/binding/Bindings$91;->val$index:I

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableIntegerArray;->get(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 7179
    .end local v0    # "this":Ljavafx/beans/binding/Bindings$91;
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_0
    return v0

    .line 7176
    .end local v1    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$91;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 7177
    .restart local v1    # "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Exception while evaluating binding"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7179
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 7169
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$91;
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$91;->val$op:Ljavafx/collections/ObservableIntegerArray;

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/IntegerBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 7170
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
    .line 7185
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$91;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$91;->val$op:Ljavafx/collections/ObservableIntegerArray;

    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$91;
    return-object v0
.end method
