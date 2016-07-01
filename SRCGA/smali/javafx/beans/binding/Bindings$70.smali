.class final Ljavafx/beans/binding/Bindings$70;
.super Ljavafx/beans/binding/BooleanBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->isNotEmpty(Ljavafx/collections/ObservableList;)Ljavafx/beans/binding/BooleanBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$op:Ljavafx/collections/ObservableList;


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 8

    .prologue
    .line 6046
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$70;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/Bindings$70;->val$op:Ljavafx/collections/ObservableList;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 6048
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/Bindings$70;->val$op:Ljavafx/collections/ObservableList;

    aput-object v6, v4, v5

    invoke-super {v2, v3}, Ljavafx/beans/binding/BooleanBinding;->bind([Ljavafx/beans/Observable;)V

    .line 6049
    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 2

    .prologue
    .line 6058
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$70;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$70;->val$op:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$70;
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$70;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 6053
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$70;
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$70;->val$op:Ljavafx/collections/ObservableList;

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/BooleanBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 6054
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
    .line 6064
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$70;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$70;->val$op:Ljavafx/collections/ObservableList;

    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$70;
    return-object v0
.end method
